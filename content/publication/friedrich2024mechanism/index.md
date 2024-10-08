---
title: "Scalable Mechanism Design for Multi-Agent Path Finding"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types:
  - "1"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
  - Paul Friedrich
  - admin
  - Michael Curry
  - Ludwig Dierks
  - Stephen McAleer
  - Jiaoyang Li
  - Tuomas Sandholm
  - Sven Seuken

# # Author notes (optional)
author_notes:
  - Equal contribution
  - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *Proceedings of the International Joint Conference on Artificial Intelligence (IJCAI), August 03–09, Jeju, Korea*"

abstract: Multi-Agent Path Finding (MAPF) involves determining paths for multiple agents to travel simultaneously through a shared area toward particular goal locations. This problem is computationally complex, especially when dealing with large numbers of agents, as is common in realistic applications like autonomous vehicle coordination. Finding an optimal solution is often computationally infeasible, making the use of approximate algorithms essential. Adding to the complexity, agents might act in a self-interested and strategic way, possibly misrepresenting their goals to the MAPF algorithm if it benefits them. Although the field of mechanism design offers tools to align incentives, using these tools without careful consideration can fail when only having access to approximately optimal outcomes. Since approximations are crucial for scalable MAPF algorithms, this poses a significant challenge. In this work, we introduce the problem of scalable mechanism design for MAPF and propose three strategyproof mechanisms, two of which even use approximate MAPF algorithms. We test our mechanisms on realistic MAPF domains with problem sizes ranging from dozens to hundreds of agents. Our findings indicate that they improve welfare beyond a simple baseline.


# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: "https://arxiv.org/pdf/2401.17044.pdf"
url_code: "https://github.com/lunjohnzhang/MAPF-Mechanism"
url_dataset: ""
url_poster: ""
url_project: ""
url_slides: "https://1drv.ms/b/c/6847b8d033285874/Eeco5dx9801JhGedvGUCheUB_-cDJUyejpD8mDxKtgQ90Q?e=XGfJ5q"
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

date: 2024-04-30T00:00:00.000Z
doi: 10.24963/ijcai.2024/7

profile: false
share: false
show_date: false

# design:
    # css_class:
    # css_style: ".article-metadata {font-size: 25px;}"

---