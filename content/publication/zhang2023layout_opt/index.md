---
title: "Multi-Robot Coordination and Layout Design for Automated Warehousing"

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
  - Varun Bhatt
  - Stefanos Nikolaidis
  - Jiaoyang Li

# # Author notes (optional)
# author_notes:
#   - Equal contribution
#   - Equal contribution
#   - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *Proceedings of the International Joint Conference on Artificial Intelligence (IJCAI), August 19–25, 2023, Macao, China*"

abstract: With the rapid progress in Multi-Agent Path Finding (MAPF), researchers have studied how MAPF algorithms can be deployed to coordinate hundreds of robots in large automated warehouses. While most works try to improve the throughput of such warehouses by developing better MAPF algorithms, we focus on improving the throughput by optimizing the warehouse layout. We show that, even with state-of-the-art MAPF algorithms, commonly used human-designed layouts can lead to congestion for warehouses with large numbers of robots and thus have limited scalability. We extend existing automatic scenario generation methods to optimize warehouse layouts. Results show that our optimized warehouse layouts (1) reduce traffic congestion and thus improve throughput, (2) improve the scalability of the automated warehouses by doubling the number of robots in some cases, and (3) are capable of generating layouts with user-specified diversity measures.


# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: "https://arxiv.org/pdf/2305.06436.pdf"
url_code: "https://github.com/lunjohnzhang/warehouse_env_gen_public"
url_dataset: ""
url_poster: "https://drive.google.com/file/d/1-E1Jh3Jz8HcZcTAWGOcHZMShZC9fpMl8/view?usp=drive_link"
url_project: ""
url_slides: "https://andrewcmu-my.sharepoint.com/:p:/g/personal/yulunz_andrew_cmu_edu/ESE4DJIP2pNFiGNgfCVjCOUB00QzC4daPteyEFFyWDctaA?e=E1lDfo"
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

date: 2023-05-11T00:00:00.000Z
doi: 10.24963/ijcai.2023/611

---

<!-- {{% callout note %}}
Click the *Cite* button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the *Slides* button to check out the example.
{{% /callout %}}

Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/). -->

<!-- ## Visualizations -->
<table>
<tr>
    <td>
        {{< video src="dsage-map.mp4" >}}
        <center>Our Optimized map</center>
    </td>
    <td>
        {{< video src="human-designed-map.mp4" >}}
        <center>Traditional human-designed map</center>
    </td>
</tr>
</table>