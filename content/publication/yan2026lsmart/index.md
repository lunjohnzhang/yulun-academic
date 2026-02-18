---
title: "Lifelong Scalable Multi-Agent Realistic Testbed and A Comprehensive Study on Design Choices in Lifelong AGV Fleet Management Systems"

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
  - Jingtian Yan
  - Yulun Zhang
  - Zhenting Liu
  - Han Zhang
  - He Jiang
  - Jingkai Chen
  - Stephen F. Smith
  - Jiaoyang Li


# Author notes (optional)
author_notes:
  - Equal contribution
  - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "*Preprint*"

abstract: "We present Lifelong Scalable Multi-Agent Realistic Testbed (LSMART), an open-source simulator to evaluate any Multi-Agent Path Finding (MAPF) algorithm in a Fleet Management System (FMS) with Automated Guided Vehicles (AGVs). MAPF aims to move a group of agents from their corresponding starting locations to their goals. Lifelong MAPF (LMAPF) is a variant of MAPF that continuously assigns new goals for agents to reach. LMAPF applications, such as autonomous warehouses, often require a centralized, lifelong system to coordinate the movement of a fleet of robots, typically AGVs. However, existing works on MAPF and LMAPF often assume simplified kinodynamic models, such as pebble motion, as well as perfect execution and communication for AGVs. Prior work has presented SMART, a software capable of evaluating any MAPF algorithms while considering agent kinodynamics, communication delays, and execution uncertainties. However, SMART is designed for MAPF, not LMAPF. Generalizing SMART to an FMS requires many more design choices. First, an FMS parallelizes planning and execution, raising the question of when to plan. Second, given planners with varying optimality and differing agent-model assumptions, one must decide how to plan. Third, when the planner fails to return valid solutions, the system must determine how to recover. In this paper, we first present LSMART, an open-source simulator that incorporates all these considerations to evaluate any MAPF algorithms in an FMS. We then provide experiment results based on state-of-the-art methods for each design choice, offering guidance on how to effectively design centralized lifelong AGV Fleet Management Systems."


# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: true

# extra links
url_pdf: "https://arxiv.org/pdf/2602.15721"
url_code: "https://github.com/smart-mapf/lifelong-smart"
url_dataset: ""
url_poster: ""
url_project: ""
url_slides: ""
url_source: ""
url_video: ""

# Custom links
links:
  - name: Website
    url: https://smart-mapf.github.io/lifelong-smart/

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
# - "content/project/nrikids/index.md"

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
# slides: example

date: 2026-02-18T00:00:00.000Z
doi: 10.48550/arXiv.2602.15721

profile: false
share: false
show_date: false
# design:
# css_class:
# css_style: ".article-metadata {font-size: 25px;}"
---
