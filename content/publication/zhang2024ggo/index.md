---
title: "Guidance Graph Optimization for Lifelong Multi-Agent Path Finding"

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
  - He Jiang
  - Varun Bhatt
  - Stefanos Nikolaidis
  - Jiaoyang Li

# # Author notes (optional)
# author_notes:
#   - Equal contribution
#   - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "*Preprint*"

abstract: We study how to use guidance to improve the throughput of lifelong Multi-Agent Path Finding (MAPF). Previous studies have demonstrated that while incorporating guidance, such as highways, can accelerate MAPF algorithms, this often results in a trade-off with solution quality. In addition, how to generate good guidance automatically remains largely unexplored, with current methods falling short of surpassing manually designed ones. In this work, we introduce the directed guidance graph as a versatile representation of guidance for lifelong MAPF, framing Guidance Graph Optimization (GGO) as the task of optimizing its edge weights. We present two GGO algorithms to automatically generate guidance for arbitrary lifelong MAPF algorithms and maps. The first method directly solves GGO by employing CMA-ES, a black-box optimization algorithm. The second method, PIU, optimizes an update model capable of generating guidance, demonstrating the ability to transfer optimized guidance graphs to larger maps with similar layouts. Empirically, we show that (1) our guidance graphs improve the throughput of three representative lifelong MAPF algorithms in four benchmark maps, and (2) our update model can generate guidance graphs for as large as $93\times91$ maps and as many as 3000 agents.


# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: "https://arxiv.org/pdf/2402.01446.pdf"
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

date: 2024-02-02T00:00:00.000Z
# doi: 10.24963/ijcai.2023/611

profile: false
share: false
show_date: false

# design:
    # css_class:
    # css_style: ".article-metadata {font-size: 25px;}"

---