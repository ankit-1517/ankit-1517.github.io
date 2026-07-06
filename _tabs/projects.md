---
# the default layout is 'page'
icon: fas fa-code
order: 2
---

A selection of academic and personal projects. Source for most is on
[github.com/ankit-1517](https://github.com/ankit-1517).

## Systems &amp; Low-Level

- **[Compiler Design](https://github.com/ankit-1517/Compiler-Design)** — _C++, LLVM._ Emits LLVM IR for a
  C subset (runs under `lli`) with local optimizations: constant-folding, dead-code removal, constant
  propagation.
- **[Operating Systems Projects](https://github.com/ankit-1517/Operating-Systems-Projects)** — _C._ A
  `malloc`/`free` allocator (free-list, first-fit), a page-table simulation with clock/LRU/MLFQ
  replacement, and reader/writer-preference RW locks built on semaphores.
- **[Parallel Programming](https://github.com/ankit-1517/Parallel-Programming)** — _C++, MPI, OpenMP._
  Crout's LU decomposition parallelized with MPI + OpenMP (**−50% runtime**); tree- vs partition-based
  parallel reductions.
- **[Computer Networks — Mini Torrent](https://github.com/ankit-1517/Computer-Networks)** — _C++, libcurl._
  A large-file downloader that spreads a download across servers and is resilient to disconnections,
  resuming on new TCP connections.

## Distributed Systems &amp; Databases

- **[Distributed Systems](https://github.com/ankit-1517/Distributed-Systems)** — _C++._ Pastry DHT
  (node join/leave, lookups), a threaded GHS distributed-MST simulation, and a Bitcoin system with
  multi-transaction support.
- **[Disk-Based R-Tree](https://github.com/ankit-1517/dbms_rTree)** — _C++._ A disk-backed R-Tree
  supporting point and range queries over very large datasets.
- **[Information Retrieval](https://github.com/ankit-1517/Information-Retrieval)** — _C++._ BM-25, TF-IDF,
  Boolean retrieval and an inverted index for large-scale search (100K docs, sub-second queries).
- **[ProvChain](https://github.com/ankit-1517/ProvChain)** — _Java, Blockchain._ A secure provenance
  model combining a provenance database with a blockchain in the cloud (SHA-256 + RSA).

## Security

- **[Networks &amp; Systems Security](https://github.com/ankit-1517/Networks-and-Systems-Security)** —
  _C++, Python._ Implemented (and cracked) RSA and a birthday attack on SHA-3, implemented TLS for secure
  messaging, and compared IITD-email vs Gmail security.
- **[Intrusion Detection](https://github.com/ankit-1517/Intrusion-Detection)** — _Python, ML._ Random
  Forest, LGBM and CatBoost models to detect suspicious network activity.

## Machine Learning &amp; AI

- **[NLP COVID-Tweet Classification](https://github.com/ankit-1517/NLP-based-COVID-Tweet-Classification)**
  — _Python, BERTweet._ Code for the paper _Identification of Misinformation in COVID-19 Tweets Using
  BERTweet_ (NLP4IF, 2021).
- **[Reinforcement Learning](https://github.com/ankit-1517/Reinforcement-Learning)** &amp;
  **[Atari DQN](https://github.com/ankit-1517/Atari-DQN)** — _Python._ DeepMind's DQN and linear Q-net
  approximation for Atari Pong; a range of RL techniques on control problems.
- **[GridWorld — MDP &amp; Q-Learning](https://github.com/ankit-1517/GridWorld-using-MDP-and-Q-Learning)**
  and **[PacMan AI](https://github.com/ankit-1517/PacMan-AI)** — _Python._ Value iteration / Q-learning,
  and informed search + adversarial (minimax/expectimax) agents.
- **[NER using Bi-LSTM](https://github.com/ankit-1517/ner-bi-lstm)** — _Python._ Bi-LSTM with GloVe and
  character-level embeddings for named-entity recognition.
- **[Image Processing](https://github.com/ankit-1517/Image-Processing)** &amp;
  **[Marker-Based AR](https://github.com/ankit-1517/Marker-Based-Augmented-Reality)** &amp;
  **[Hand-Gesture Recognition](https://github.com/ankit-1517/Robust-Hand-Gesture-Recognition)** —
  _Python, OpenCV._ Segmentation/wavelets/morphology, a 2D AR car via camera calibration + homography,
  and a CNN-based gesture-controlled music player.
- **[Recursive Bayesian Estimation](https://github.com/ankit-1517/Recursive-Bayesian-Estimation)** —
  _Python._ Localizing a flying aircraft from noisy sensor observations.

## Apps &amp; Misc

- **Rendezvous App** — _React Native._ The official app for [Rendezvous](https://rdv.iitd.ac.in/), IIT
  Delhi's cultural festival (Android + iOS).
- **[Data Structures Projects](https://github.com/ankit-1517/Data-Structures-Projects)** — _Java._ A
  structure for a simplified mobile-phone location-tracking problem.
- **[Brainfuck Interpreter](https://github.com/ankit-1517/Brainfuck-Interpreter)** — _C++._ A small
  Brainfuck interpreter.
