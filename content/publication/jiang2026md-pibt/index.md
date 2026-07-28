---
title: "Planning over MAPF Agent Dependencies via Multi-Dependency PIBT"

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
  - Zixiang Jiang$^U$
  - admin
  - Rishi Veerapaneni
  - Jiaoyang Li

# Author notes (optional)
author_notes:
  - Equal contribution
  - Equal contribution
  - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *Proceedings of the IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), Sep 27-Oct 1, 2026, Pittsburgh, Pennsylvania, USA*"

abstract: Modern Multi-Agent Path Finding (MAPF) algorithms must plan for hundreds to thousands of agents in congested environments within a second, requiring highly efficient algorithms. Priority Inheritance with Backtracking (PIBT) is a popular algorithm capable of effectively planning in such situations. However, PIBT is constrained by its rule-based planning procedure and lacks generality because it restricts its search to paths that conflict with at most one other agent. This limitation also applies to Enhanced PIBT (EPIBT), a recent extension of PIBT. In this paper, we describe a new perspective on solving MAPF by planning over agent dependencies. Taking inspiration from PIBT's priority inheritance logic, we define the concept of agent dependencies and propose Multi-Dependency PIBT (MD-PIBT) that searches over agent dependencies. MD-PIBT is a general framework where specific parameterizations can reproduce PIBT and EPIBT. At the same time, alternative configurations yield novel planning strategies that are not expressible by PIBT or EPIBT. Our experiments demonstrate that MD-PIBT effectively plans for as many as 10,000 homogeneous agents under various kinodynamic constraints, including pebble motion, rotation motion, and differential drive robots with speed and acceleration limits. We perform thorough evaluations on different variants of MAPF and find that MD-PIBT is particularly effective in MAPF with large agents.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: "https://arxiv.org/pdf/2603.23405"
url_code: "https://github.com/lunjohnzhang/MD-PIBT"
url_dataset: ""
url_poster: ""
url_project: ""
url_slides: ""
url_source: ""
url_video: "https://drive.google.com/file/d/17yvQbRzXKzzJ2fYr4LuE2J-1X8jafvWh/view?usp=sharing"

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  filename: featured
  focal_point: Smart
  preview_only: false

date: 2026-06-15T00:00:00.000Z
doi: 10.48550/arXiv.2603.23405

profile: false
share: false
show_date: false
---

## **Introduction**

We propose Multi-Dependency PIBT (MD-PIBT), published in IROS 2026. MD-PIBT generalizes PIBT [[1]](#references) and EPIBT [[2]](#references) by allowing each agent to bump into multiple agents while planning a multi-step windowed path, using the concept of an Agent Dependency Graph.

## **Agent Dependency Graph**

<figure>
  <img src="adg.png" alt="MD-PIBT Agent Dependency Graph running example">
  <figcaption><b>Figure 1:</b> Agent Dependency Graph.</figcaption>
</figure>

MD-PIBT builds and searches over an Agent Dependency Graph. Left shows a scenario for planning with a window size of 3, with initial path preferences drawn. Assume all agents' safe paths are waiting at their current location.

(1) Let MD-PIBT start planning with A. A's path conflicts with B, D, and E's safe path, causing A to have hard dependencies on them. Thus, B, D, E need to be planned next. Given multiple agents, we plan in alphabetical order.

(2) When B plans, B's path collides with C and A's safe path. Since A is already planned, we record a soft dependency between B and A.

(3-6) This logic continues until planning F.

(7) F fails to find a collision-free path. When this occurs, F requires a parent (in this case C) to replan. The replan request unplans C which includes removing downstream dependencies and converting soft dependencies to C to hard dependencies.

(8) Suppose that C replans by moving down, which does not intersect with F's safe path. Then F is not included in the AgDG. (9) After planning all agents in the AgDG, we can move on to plan other agents not in the AgDG (not depicted).

## **Demo**

Our experiments show that MD-PIBT significantly outperforms EPIBT [[2]](#references) when coordinating agents of heterogeneous sizes. The comparison below shows both methods on the same scenario.

<figure>
<div class="image-row">
  <figure>
    <img src="epibt.gif" alt="EPIBT coordinating agents of heterogeneous sizes">
    <figcaption>EPIBT</figcaption>
  </figure>
  <figure>
    <img src="mdpibt.gif" alt="MD-PIBT coordinating agents of heterogeneous sizes">
    <figcaption>MD-PIBT</figcaption>
  </figure>
</div>
<figcaption><b>Figure 2:</b> EPIBT and MD-PIBT on a heterogeneous-agent scenario.</figcaption>
</figure>

## **Cite**

```bibtex
@inproceedings{Jiang2026md-pibt,
  author    = {Zixiang Jiang and Yulun Zhang and Rishi Veerapaneni and Jiaoyang Li},
  title     = {Planning over MAPF Agent Dependencies via Multi-Dependency PIBT},
  booktitle = {Proceedings of the IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  pages     = {},
  year      = {2026}
}
```

This software is released under the [MIT License](https://github.com/lunjohnzhang/MD-PIBT/blob/master/LICENSE.txt).

## **References**

**[1]** Keisuke Okumura, Manao Machida, Yasumasa Tamura, and Xavier Défago. “Priority Inheritance with Backtracking for Iterative Multi-agent Path Finding.” *Artificial Intelligence*, 2022.

**[2]** Egor Yukhnevich and Anton Andreychuk. “Enhancing PIBT via Multi-Action Operations.” *Proceedings of the AAAI Conference on Artificial Intelligence*, 2025.
