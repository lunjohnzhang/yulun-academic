---
title: Towards Exploiting Geometry and Time for Fast Off-Distribution Adaptation
  in Multi-Task Robot Learning

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
  - KR Zentner
  - Ryan C Julian
  - Ujjwal Puri
  - - "**Yulun Zhang**"
  - Gaurav S Sukhatme

# Author notes (optional)
author_notes:
  - Equal contribution
  - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *NeurIPS 2020 Workshop: Challenges of Real World Reinforcement Learning*"

abstract: >
  We explore possible methods for multi-task transfer learning which seek to
  exploit the shared physical structure of robotics tasks. Specifically, we
  train policies for a base set of pre-training tasks, then experiment with
  adapting to new off-distribution tasks, using simple architectural approaches
  for re-using these policies as black-box priors. These approaches include
  learning an alignment of either the observation space or action space from a
  base to a target task to exploit rigid body structure, and methods for
  learning a time-domain switching policy across base tasks which solves the
  target task, to exploit temporal coherence. We find that combining
  low-complexity target policy classes, base policies as black-box priors, and
  simple optimization algorithms allows us to acquire new tasks outside the base
  task distribution, using small amounts of offline training data.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: ""
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
projects:
# - example

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
# slides: example

date: 2020-12-15T21:17:19.609Z
---

<!-- {{% callout note %}}
Click the *Cite* button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the *Slides* button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/). -->
