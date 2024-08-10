---
title: "Guidance Graph Optimization for Lifelong Multi-Agent Path Finding"

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
  - He Jiang
  - Varun Bhatt
  - Stefanos Nikolaidis
  - Jiaoyang Li

# # Author notes (optional)
# author_notes:
#   - Equal contribution
#   - Equal contribution

# Publication name and optional abbreviated publication name.
publication: "In *Proceedings of the International Joint Conference on Artificial Intelligence (IJCAI), August 03–09, Jeju, Korea*"

abstract: We study how to use guidance to improve the throughput of lifelong Multi-Agent Path Finding (MAPF). Previous studies have demonstrated that, while incorporating guidance, such as highways, can accelerate MAPF algorithms, this often results in a trade-off with solution quality. In addition, how to generate good guidance automatically remains largely unexplored, with current methods falling short of surpassing manually designed ones. In this work, we introduce the guidance graph as a versatile representation of guidance for lifelong MAPF, framing Guidance Graph Optimization as the task of optimizing its edge weights. We present two GGO algorithms to automatically generate guidance for arbitrary lifelong MAPF algorithms and maps. The first method directly optimizes edge weights, while the second method optimizes an update model capable of generating edge weights. Empirically, we show that (1) our guidance graphs improve the throughput of three representative lifelong MAPF algorithms in eight benchmark maps, and (2) our update model can generate guidance graphs for as large as $93 \times 91$ maps and as many as 3,000 agents.

# Summary. An optional shortened abstract.
# summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# extra links
url_pdf: "https://arxiv.org/pdf/2402.01446.pdf"
url_code: "https://github.com/lunjohnzhang/ggo_public"
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

date: 2024-05-02T00:00:00.000Z
doi: 10.24963/ijcai.2024/35

profile: false
share: false
show_date: false
# design:
# css_class:
# css_style: ".article-metadata {font-size: 25px;}"
---

<style>
    .no-scroll {
        overflow: hidden;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    td, th {
        width: 20%;
        text-align: center;
        vertical-align: middle;
        font-size: 20px;
    }
    .img-fit {
        width: 100%; /* Adjust width as needed */
        height: auto;
    }
</style>


## **Optimized Guidance Graphs**

All optimized guidance graphs are available in the following table for download and analysis. The guidance graphs are offered in `csv` format. Each row of the `csv` file contains information of a vertice with the following entries:

1. `id` : id of the vertice.
2. `type` : type of the vertice. `.` for empty space, `@` for obstacles, `w` for workstations, and `e` for endpoints.
3. `x` : x-coordinate of the vertice in the grid map.
4. `y` : y-coordinate of the vertice in the grid map.
5. `weight_to_RIGHT` : edge weight of the current vertice to the vertice on the right, if valid.
6. `weight_to_UP` : edge weight of the current vertice to the vertice upward, if valid.
7. `weight_to_LEFT` : edge weight of the current vertice to the vertice on the left, if valid.
8. `weight_to_DOWN` : edge weight of the current vertice to the vertice downward, if valid.
9.  `weight_for_WAIT` : wait cost of the current vertice, if valid.

If an edge/vertice is invalid (e.g. the vertice is an obstacle), the corresponding edge weight/wait cost is `inf`.

For more information about the maps, please refer to the original paper or [MAPF benchmark sets](http://mapf.info/index.php/Main/Benchmarks).


<table border="1px" class="no-scroll">
    <tr>
        <td> Map Preview </td>
        <td> Map Name </td>
        <td> Dimension </td>
        <td> #valid vertices, #valid edges </td>
        <td> Guidance Graphs </td>
    </tr>
    <tr>
        <td> <img src="maps/random-32-32-20.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> random-32-32-20 </td>
        <td style="vertical-align: middle;"> 32 $\times$ 32 </td>
        <td style="vertical-align: middle;"> 819, 2540</td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_random_cma-es_32x32_400_agents_four-way-move.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_random_cma-es_piu-transfer_32x32_400_agents_four-way-move.csv" download> PIBT + PIU </a></u></strong>
        </td>
    </tr>
    <tr>
        <td> <img src="maps/maze-32-32-4.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> maze-32-32-4 </td>
        <td style="vertical-align: middle;"> 32 $\times$ 32 </td>
        <td style="vertical-align: middle;"> 790, 2694</td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_maze-32-32-4_cma-es_400_agents_four-way-move_g_graph.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_maze-32-32-4_cma-es-piu_400_agents_four-way-move_g_graph.csv" download> PIBT + PIU </a></u></strong>
        </td>
    </tr>
    <tr>
        <td> <img src="maps/empty-48-48.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> empty-48-48 </td>
        <td style="vertical-align: middle;"> 48 $\times$ 48 </td>
        <td style="vertical-align: middle;"> 2304, 9024</td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_empty-48-48_cma-es_1000_agents_four-way-move_g_graph.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_empty-48-48_cma-es-piu_1000_agents_four-way-move_g_graph.csv" download> PIBT + PIU </a></u></strong>
        </td>
    </tr>
    <tr>
        <td> <img src="maps/random-64-64-20.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> random-64-64-20 </td>
        <td style="vertical-align: middle;"> 64 $\times$ 64 </td>
        <td style="vertical-align: middle;"> 3270, 10298</td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_random-64-64-20_cma-es_1500_agents_four-way-move_g_graph.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_random-64-64-20_cma-es-piu_1500_agents_four-way-move_g_graph.csv" download> PIBT + PIU </a></u></strong>
        </td>
    </tr>
    <tr>
        <td><img src="maps/room-64-64-8.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> room-64-64-8 </td>
        <td style="vertical-align: middle;"> 64 $\times$ 64 </td>
        <td style="vertical-align: middle;"> 3232, 11108 </td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_room_cma-es_64x64_1500_agents_four-way-move.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_room_cma-es-piu-transfer_64x64_1500_agents_four-way-move.json.csv" download> PIBT + PIU </a></u></strong>
        </td>
    </tr>
    <tr>
        <td> <img src="maps/den312d.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> den312d </td>
        <td style="vertical-align: middle;"> 64 $\times$ 81 </td>
        <td style="vertical-align: middle;"> 2445, 8782</td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_den312d_cma-es_1200_agents_four-way-move_g_graph.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_den312d_cma-es-piu_1200_agents_four-way-move_g_graph.csv" download> PIBT + PIU </a></u></strong>
        </td>
    </tr>
    <tr>
        <td><img src="maps/kiva_large_w_mode.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> warehouse 33 $\times$ 36 </td>
        <td style="vertical-align: middle;"> 33 $\times$ 36 </td>
        <td style="vertical-align: middle;"> 948, 3126 </td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/pibt_warehouse-33x36_w_mode_cma-es_400_agents_four-way-move.csv" download> PIBT + CMA-ES</a></u><br></strong>
            <strong><u><a href="g_graph/pibt_warehouse-33x36_w_mode_cma-es-piu-transfer_400_agents_four-way-move.csv" download> PIBT + PIU </a></u><br></strong>
            <strong><u><a href="g_graph/kiva_33x36_human_cma-es_opt_220_agents.csv" download> RHCR + CMA-ES</a></u><br></strong>
        </td>
    </tr>
    <tr>
        <td><img src="maps/kiva_small_r_mode.png" class="img-fit"></td>
        <td style="vertical-align: middle;"> warehouse 17 $\times$ 20 </td>
        <td style="vertical-align: middle;"> 17 $\times$ 20 </td>
        <td style="vertical-align: middle;"> 320, 1158 </td>
        <td style="vertical-align: middle;">
            <strong><u><a href="g_graph/kiva_dpp_17x20_human_cma-es_opt_88_agents.csv" download> DPP + CMA-ES</a></u><br></strong>
        </td>
    </tr>
</table>