---
title: "Stress-Relief Annealing: Polynomial-Time Simulation-Free Layout Optimization for Automated Warehouses"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types:
  - "3"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Xiangjie Luo$^M$
  - admin
  - Miyuki Koshimura
  - Makoto Yokoo
  - Jiaoyang Li

# Publication name and optional abbreviated publication name.
publication: "*Preprint*"

abstract: We study the problem of optimizing physical layouts for automated warehouses, where hundreds to thousands of robots are coordinated to transport packages. Previous works have shown that optimizing the warehouse layout (e.g., the physical location of the storage shelves) significantly improves throughput. However, state-of-the-art layout optimization approaches are based on evolutionary optimization methods, which treat the entire warehouse as a black box and rely on random mutation to search for high-quality layouts. While the optimization outcomes are promising, these methods require a massive number of simulations to evaluate candidate solutions, making them sample-inefficient. In this paper, we present Stress-Relief Annealing (SRA), a polynomial-time simulation-free layout optimization algorithm. SRA turns the task demand into a per-vertex stress field that predicts where traffic will concentrate in the warehouse; the field's peak provably caps the throughput. Our experimental results show that (1) SRA improves both the throughput and the scalability of a human-designed warehouse, roughly doubling the number of robots it can sustain, (2) it matches or exceeds the throughput of the evolutionary baselines while taking only 19 minutes on one CPU core, against their 25,000 simulations and 25 hours on a 64-core machine, and (3) the gain generalizes across different Multi-Agent Path Finding algorithms, non-uniform task demands, and a warehouse with doubled dimensions.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# links:
#   - name: Website
#     url: /publication/luo2026sra

# extra links
url_pdf: "https://arxiv.org/pdf/2608.01024"
url_code: ""
url_dataset: ""
url_poster: ""
url_project: ""
url_slides: ""
url_source: ""
url_video: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  filename: featured
  focal_point: Smart
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
# projects:
# - "content/project/reran/index.md"

date: 2026-08-02T00:00:00.000Z
doi: 10.48550/arXiv.2608.01024

profile: false
share: false
---