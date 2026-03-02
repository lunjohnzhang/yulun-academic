---
title: "Optimization of Edge Directions and Weights for Mixed Guidance Graphs in Lifelong Multi-Agent Path Finding"

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
  - admin
  - Varun Bhatt
  - Matthew C. Fontaine
  - Stefanos Nikolaidis
  - Jiaoyang Li

# # Author notes (optional)
# author_notes:
#   - Equal contribution
#   - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "*Preprint*"

abstract: Multi-Agent Path Finding (MAPF) aims to move agents from their start to goal vertices on a graph. Lifelong MAPF (LMAPF) continuously assigns new goals to agents as they complete current ones. To guide agents' movement in LMAPF, prior works have proposed Guidance Graph Optimization (GGO) methods to optimize a guidance graph, which is a bidirected weighted graph whose directed edges represent moving and waiting actions with edge weights being action costs. Higher edge weights represent higher action costs. However, edge weights only provide soft guidance. An edge with a high weight only discourages agents from using it, instead of prohibiting agents from traversing it. In this paper, we explore the need to incorporate edge directions optimization into GGO, providing strict guidance. We generalize GGO to Mixed Guidance Graph Optimization (MGGO), presenting two MGGO methods capable of optimizing both edge weights and directions. The first optimizes edge directions and edge weights in two phases separately. The second applies Quality Diversity algorithms to optimize a neural network capable of generating edge directions and weights. We also incorporate traffic patterns relevant to edge directions into a GGO method, making it capable of generating edge-direction-aware guidance graphs.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: true

# links:
#   - name: Website
#     url: /publication/zhang2024ggo

# extra links
url_pdf: "https://arxiv.org/pdf/2602.23468"
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
# - "content/project/nrikids/index.md"

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
# slides: example

date: 2026-03-01T00:00:00.000Z
doi: 10.48550/arXiv.2602.23468

profile: false
share: false
show_date: false
# design:
# css_class:
# css_style: ".article-metadata {font-size: 25px;}"
---
