---
title: "Destination-to-Chutes Task Mapping Optimization for Multi-Robot Coordination in Robotic Sorting Systems"

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
  - admin
  - Alexandre O. G. Barbosa
  - Federico Pecora
  - Jiaoyang Li

# # Author notes (optional)
# author_notes:
#   - Equal contribution
#   - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *Proceedings of the IEEE International Symposium on Multi-Robot and Multi-Agent Systems (MRS), December 03–04, Singapore*"

abstract: We study optimizing a destination-to-chutes task mapping to improve throughput in Robotic Sorting Systems (RSS), where a team of robots sort packages on a sortation floor by transporting them from induct workstations to eject chutes based on their shipping destinations (e.g. Los Angeles or Pittsburgh). The destination-to-chutes task mapping is used to determine which chutes a robot can drop its package. Finding a high-quality task mapping is challenging because of the complexity of a real-world RSS. First, optimizing task mapping is interdependent with robot target assignment and path planning. Second, chutes will be CLOSED for a period of time once they receive sufficient packages to allow for downstream processing. Third, task mapping quality directly impacts the downstream processing, as scattered chutes for the same destination increase package handling time. In this paper, we first formally define task mappings and the problem of Task Mapping Optimization (TMO). We then present a simulator of RSS to evaluate task mappings. We then present a simple TMO method based on the Evolutionary Algorithm and Mixed Integer Linear Programming, demonstrating the advantage of our optimized task mappings over the greedily generated ones in various RSS setups with different map sizes, numbers of chutes, and destinations. Finally, we use Quality Diversity algorithms to analyze the throughput of a diverse set of task mappings.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: true

# extra links
url_pdf: "https://arxiv.org/pdf/2510.03472"
url_code: "https://github.com/lunjohnzhang/tmo_public"
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

date: 2025-10-03T00:00:00.000Z
# doi: 10.24963/ijcai.2024/35

profile: false
share: false
show_date: false
# design:
# css_class:
# css_style: ".article-metadata {font-size: 25px;}"
---