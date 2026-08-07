---
title: "Search-Aided Joint Agent-Environment Reinforcement Learning for Robust Lifelong Multi-Agent Path Finding with Rotations"

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
  - He Jiang
  - Jingtian Yan
  - admin
  - Yimin Tang
  - Tanishq Duhan
  - Rishi Veerapaneni
  - Guillaume Sartoretti
  - Jiaoyang Li

# Publication name and optional abbreviated publication name.
publication: "*Preprint*"

abstract: Lifelong Multi-Agent Path Finding (LMAPF) requires repeatedly planning collision-free paths for agents that continuously receive new goals upon reaching their current ones. While many learning-based planners have been proposed for LMAPF, most rely on oversimplified kinematic assumptions that may overlook motion constraints critical to real-world performance. In this work, we study a more realistic LMAPF model derived from many real-world automated warehouse systems, termed LMAPF-R2, which incorporates robust safety constraints and in-place rotation constraints. These constraints substantially increase coordination difficulty, particularly in highly constrained spaces. To address these challenges, we propose Search-Aided Joint Reinforcement Learning (SJRL). We first augment neural policies with Causal PIBT, a single-step search-based planner that resolves agents' collisions and propagates their intentions. We then introduce a unified RL formulation that jointly optimizes agent and environment policies, where the environment policy learns graph edge costs to provide global movement guidance via backward Dijkstra search. Experiments demonstrate that SJRL achieves significant improvements over the strong search-based planner, Causal-PIBT, across multiple high-density maps. We further validate SJRL in a challenging mixed-reality warehouse environment with 8 physical robots and 248 virtual robots.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# links:
#   - name: Website
#     url: /publication/jiang2026sjrl

# extra links
url_pdf: "https://arxiv.org/pdf/2608.05588"
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

date: 2026-08-06T00:00:00.000Z
doi: 10.48550/arXiv.2608.05588

profile: false
share: false
---