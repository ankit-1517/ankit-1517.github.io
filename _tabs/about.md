---
# the default layout is 'page'
icon: fas fa-user
order: 1
---

I'm **Ankit Kumar**, a Senior Software Engineer who builds **low-latency, large-scale streaming
and ML infrastructure**. My work spans the full stack of a modern CTV/ad-tech platform — from
squeezing latency out of hot paths and reducing lock critical sections, to owning the Kubernetes
and data-pipeline layers that hundreds of jobs and millions of content items run on.

I care about two things in roughly equal measure: **systems that are fast** (careful memory,
concurrency, and I/O work) and **systems that scale and stay up** (distributed data pipelines,
platform ownership, and ML infrastructure). I hold a B.Tech in Mathematics &amp; Computing from
**IIT Delhi** and have published research in databases and NLP.

<a href="/assets/resume.pdf" class="btn btn-primary" target="_blank" rel="noopener">📄 Résumé (PDF)</a>
&nbsp;
<a href="https://github.com/ankit-1517" target="_blank" rel="noopener">GitHub</a>
&nbsp;·&nbsp;
<a href="https://www.linkedin.com/in/ankit1517" target="_blank" rel="noopener">LinkedIn</a>

> The résumé PDF is a starting point — replace `assets/resume.pdf` with your latest, Anoki-current version.
{: .prompt-tip }

## Experience

### Senior Software Engineer — Anoki AI
_Gurugram, India · Sep 2024 – Present_

- **ML / vector-search infra:** designed and built a **PostgreSQL-backed semantic content-search
  system** from scratch — provisioned the RDS instance, schema and indices, migrated embeddings into
  Postgres, and ran a formal evaluation of query relevance and latency/QPS at **50K → 150K** content
  scale. Deployed **embedding servers on EKS/GKE** for the "copilot" feature, stood up a **GPU-based
  split server for video search**, and built periodic **embedding-refresh** pipelines.
- **Low-latency &amp; systems performance:** reduced lock **critical-section** time by reading MaxMind
  geo data straight from bytes; cut cache memory footprint and added multi-level DB caching;
  **load-tested** the config server and rate-limited HAProxy; chased down memory growth, intermittent
  connection drops, a `readBlocking` **segfault**, and native crashes on the C++/Android ACR client.
- **Platform / infra ownership:** own the **Kubernetes** deployment layer for the whole platform
  (ArgoCD + Kustomize, consolidated manifests, resource tuning) and the **Airflow** orchestration
  (prod upgrades, Consul → Airflow-variables migration, OpsGenie on-call alerting). Ran a disciplined
  **phased production rollout (1% → 10% → 50% → 100%)** with monitoring, executed a **Graviton/ARM64
  migration** of recorder/config-server/Airflow pods (incl. custom ARM64 Fluentd images) for cost and
  performance, and authored the org-wide **Kafka client libraries in Go and Python** adopted across
  services.
- **Streaming systems at scale:** built the **EPG schedule-recorder + stitcher** (decoupled
  scheduler/recorder, HLS export, MP4 generation, **SCTE ad-marker detection**, Kafka metadata
  ingestion, retry/backfill) and a **live HLS playlist server** (snapshot APIs, segment stitching from
  Kafka, HTTP → Kafka ML interface, CloudFront delivery, safe/unsafe brand-safety split).
- **Ad-tech data &amp; fraud/brand-safety:** built **Invalid-Traffic (IVT) detection** end-to-end —
  global and advertiser-level aggregation, Superset dashboards, periodic Airflow blocklist/stats jobs,
  and blocklist push to **Beeswax**. **Spark/Scala** aggregation for viewer insights, content
  intelligence, app-viewership and geo-distribution pipelines.

### Senior Software Engineer → Software Engineer — LG Ad Solutions (formerly Alphonso)
_Bengaluru, India · Feb 2021 – Aug 2024 (SWE, then Senior SWE from Apr 2023)_

- **Data Services** _(Spark, Scala, Python, Go, HDFS, Kafka, Elasticsearch, Airflow):_ set up HA
  Airflow infra managing 100s of jobs; owned Elasticsearch infra scaling to **100s of TB**; built an
  EPG pipeline processing **100s of GB** from multi-country providers; owned a Spark-Streaming ETL from
  Kafka → Elasticsearch/HDFS at **500K records/min**.
- **Server-Side Ad-Insertion** _(Go, Node.js, Redis, Kubernetes, HLS, MPEG-DASH):_ built an
  ad-insertion server from scratch that scaled to **400K+ concurrent live viewers** (profiled with
  pprof/Clinic.js/K6); JIT VoD ad-insertion improved ad watch-completion by **50%**; custom internal
  interfaces improved end-to-end performance by **75%**; multi-level caching added **50%** headroom
  under load.
- **Content Hosting &amp; Management** _(Go, Node.js, MySQL, Elasticsearch, Kafka, Kubernetes, React):_
  delivered **6,000+** VoD and live content pieces; built a multi-partner onboarding lifecycle and an
  API + UI serving over **1M+** content items.
- **Smart-TV Operating System** _(C++, Node.js, Android):_ built a resilient downloader/updater (100s of
  MB over weak links, surviving reboots), a socket-IPC app-manager, and a **100% automated test-suite**
  across Linux and Android TVOS.
- Rated a top performer; mentored an intern into a full-time role; co-organized **Code Like Ada**, a
  women-in-tech hackathon.

### Software Engineering Research Intern — University College London
_London, UK · May – Jul 2020_

- Used **Snorkel** to combine code-smell detectors (PMD, Infer, Error-Prone) into a strong labeller and
  proposed a self-attention **Transformer**-based bug-detection framework.

### Database Research Intern — Imperial College London
_London, UK · Dec 2019 – Apr 2020_

- Proposed hybrid **learned spatial indexes** (Interpolation-friendly R-Tree, KD/Quad/Oc-Tree),
  **reducing query time by 60%** while shrinking the index memory footprint by **over 90%** — published
  as _Hands-off Model Integration in Spatial Index Structures_ (AIDB@VLDB, 2020).

### Software Engineer Intern — Elucidata
_New Delhi, India · May – Jul 2019_

- Built an Abstract-Factory-based package generating Jupyter notebooks from YAML, **cutting data-analysis
  time by 95%**.

## Education

**Indian Institute of Technology, Delhi** — B.Tech, Mathematics &amp; Computing (major), Computer
Science (minor) · 2017 – 2021 · **CGPA 9.0/10**

## Skills

- **Languages:** C/C++, Go, Scala, JavaScript/TypeScript, Python
- **Data &amp; messaging:** PostgreSQL, MySQL, Elasticsearch, Kafka, Redis, MongoDB
- **Frameworks &amp; data:** Spark, React, Node.js
- **Build &amp; deploy:** Docker, Kubernetes, ArgoCD, Kustomize, Jenkins, Istio, Helm
- **Observability:** Prometheus, Grafana, InfluxDB, Chronograf, Kibana

## Publications

- **Identification of Misinformation in COVID-19 Tweets Using BERTweet** — _NLP4IF, 2021_
- **Hands-off Model Integration in Spatial Index Structures** — _AIDB@VLDB, 2020_

## Honors &amp; Awards

- **JEE 2017** — All India Rank **226**
- **CBSE Mathematical Olympiad 2015–16** — All India Rank **11** (top 35 nationally)
- **SOF International Mathematics Olympiad** — International rank &lt; 25, three times (2014–16)
- **KVPY** Scholar (top 1%) · **NTSE** Scholar (top 1000 nationally)
- Teaching Assistant (Database Systems, Intro to CS) · Academic Mentor for 100+ first-years
- Technical Coordinator, Rendezvous 2019 (built the festival's main app)
