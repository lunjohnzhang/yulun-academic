---
title: "Deep Surrogate Assisted MAP-Elites for Automated Hearthstone Deckbuilding"

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
  - Matthew C. Fontaine
  - Amy K. Hoover
  - Stefanos Nikolaidis

# # Author notes (optional)
# author_notes:
#   - Equal contribution
#   - Equal contribution
#   - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *Proceedings of the Genetic and Evolutionary Computation Conference (GECCO), July 9–13, 2022, Boston, MA, USA*"

abstract: We study the problem of efficiently generating high-quality and diverse content in games. Previous work on automated deckbuilding in Hearthstone shows that the quality diversity algorithm MAP-Elites can generate a collection of high-performing decks with diverse strategic gameplay. However, MAP-Elites requires a large number of expensive evaluations to discover the diverse collection of decks. We propose assisting MAP-Elites with a deep surrogate model trained online to predict game outcomes with respect to candidate decks. MAP-Elites discovers a diverse dataset to improve the surrogate model accuracy, while the surrogate model helps guide MAP-Elites towards promising new content. In a Hearthstone deckbuilding case study, we show that our approach improves the sample efficiency of MAP-Elites and outperforms a model trained offline with random decks, as well as a linear surrogate model baseline, setting a new state-of-the-art for quality diversity approaches in the application domain of automated Hearthstone deckbuilding.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: "https://arxiv.org/pdf/2112.03534.pdf"
url_code: "https://github.com/icaros-usc/EvoStone2"
url_dataset: ""
url_poster: ""
url_project: ""
url_slides: "https://docs.google.com/presentation/d/1KqLFfOxZ6wwlwnXSyGrYzlHN9sPGmeVRrjBtn6WWDCM/edit?usp=sharing"
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

date: 2022-07-08T00:00:00.000Z
doi: 10.1145/3512290.3528718

profile: false
share: false
show_date: false

---

<!-- {{% callout note %}}
Click the *Cite* button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the *Slides* button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/). -->

<!-- {{< video src="archives.mp4" >}}
<center>Archives of DSA-ME and MAP-Elites.</center> -->


<div class="video-container">
<video autoplay loop muted >
    <source src="archives.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>
<p class="video-caption">Archives of DSA-ME and MAP-Elites.</p>
</div>
