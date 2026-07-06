---
title: "CPU Throttling in Containerized Go Apps"
date: 2026-07-06 12:00:00 +0530
categories: [Infrastructure, Performance]
tags: [go, kubernetes, cpu, throttling, performance]     # tag names are lowercase by convention
description: "How a one-line Go upgrade fixed CPU throttling and OOM restarts that no amount of code tuning could."
pin: false
---

I was working on some performance optimization for a service called `acrproxy`, and found
something super interesting.

The service used to sit at ~50% of its CPU request (which equals its limit), yet it was being
*throttled* most of the time. Memory was around 30% of request 99.99% of the time, and still I'd
see periodic pod restarts — OOM-killed, at least 2–3 every day.

## Chasing the wrong fix first

On probing, the most likely cause was throttling leading to too many active goroutines. So I made
the obvious change: shift from ad-hoc goroutines to a **worker pool**, capping both the number of
active goroutines and the memory footprint of the process.

No help. Still throttled.

## The actual cause

Then I found [these](https://go.dev/blog/container-aware-gomaxprocs) [blogs](https://kanishk.io/posts/cpu-throttling-in-containerized-go-apps/).

Turns out **Go < 1.25 is unaware of CPU limits**. It sets `GOMAXPROCS` to the number of CPUs on
the *machine*, not the number your container is actually allowed to use. On a big node with a small
CPU limit, the runtime spins up far more OS threads than your cgroup quota permits, burns through
the quota in a fraction of the scheduling period, and gets throttled for the rest of it — even
though average utilization looks low.

Go 1.25 makes `GOMAXPROCS` container-aware: it reads the cgroup CPU limit and sizes the runtime
accordingly.

So the fix was a one-liner. **Upgrading from Go 1.24 to 1.25** gave a bigger performance
improvement than everything I'd hand-tuned myself.

> `GOMAXPROCS` controls how many OS threads run Go code simultaneously. Match it to your CPU limit
> and the runtime stops trying to use cores the scheduler will never give it.
{: .prompt-tip }

## Further reading

- [Pod CPU throttling](https://stackoverflow.com/questions/54099425/pod-cpu-throttling) — describes the problem
- [Container-aware GOMAXPROCS](https://go.dev/blog/container-aware-gomaxprocs) — describes the solution
- [CPU throttling in containerized Go apps](https://kanishk.io/posts/cpu-throttling-in-containerized-go-apps/) — dives a little deeper

## Before / after

**Before** — Go 1.24, 10 replicas, ~2 CPU limit. Throttling steady around 30%:

![CPU usage and throttling before the fix — throttling sits around 30%](/assets/img/throttling-before.png)
_Before: CPU usage well under the limit, yet throttled ~30% of the time._

**After** — Go 1.25, 4 replicas, ~2.5 CPU limit. Throttling drops to ~0%:

![CPU usage and throttling after the fix — throttling near 0%](/assets/img/throttling-after.png)
_After: throttling flatlines near 0%._

There's a jump from a max of 2 CPU to 2.5 CPU, but that's only because I moved from 10 replicas to
4 — focus on the throttling, not the max CPU. At peak traffic, **4 replicas used half the CPU that
10 replicas did before, and without getting throttled.**
