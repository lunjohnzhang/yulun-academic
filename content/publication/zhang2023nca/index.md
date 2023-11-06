---
title: "Arbitrarily Scalable Environment Generators via Neural Cellular Automata"

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
publication: "In *Proceedings of the Advances in Neural Information Processing Systems (NeurIPS), December 10–16, 2023, New Orleans, LA, USA*"

abstract: We study the problem of generating arbitrarily large environments to improve the throughput of multi-robot systems. Prior work proposes Quality Diversity (QD) algorithms as an effective method for optimizing the environments of automated warehouses. However, these approaches optimize only relatively small environments, falling short when it comes to replicating real-world warehouse sizes. The challenge arises from the exponential increase in the search space as the environment size increases. Additionally, the previous methods have only been tested with up to 350 robots in simulations, while practical warehouses could host thousands of robots. In this paper, instead of optimizing environments, we propose to optimize Neural Cellular Automata (NCA) environment generators via QD algorithms. We train a collection of NCA generators with QD algorithms in small environments and then generate arbitrarily large environments from the generators at test time. We show that NCA environment generators maintain consistent, regularized patterns regardless of environment size, significantly enhancing the scalability of multi-robot systems in two different domains with up to 2,350 robots. Additionally, we demonstrate that our method scales a single-agent reinforcement learning policy to arbitrarily large environments with similar patterns.

# Summary. An optional shortened abstract.
summary: We propose to optimize Neural Cellular Automata (NCA) environment generators via QD algorithms. We show that NCA-generated environments maintain consistent, regularized patterns regardless of environment size, significantly enhancing the scalability of multi-robot systems.

# Is this paper is draft?
draft: false

# Display this page in the Featured widget?
featured: false

# Custom links
links:
  - name: Website
    url: /publication/zhang2023nca

# extra links
url_pdf: "https://arxiv.org/pdf/2310.18622.pdf"
url_code: "https://github.com/lunjohnzhang/warehouse_env_gen_nca_public"
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

date: 2023-10-31T00:00:00.000Z
# doi: 10.24963/ijcai.2023/611

profile: false
share: false
show_date: false
# design:
# css_class:
# css_style: ".article-metadata {font-size: 25px;}"
---

## **Introduction**

Our previous work [[1](/publication/zhang2023layout_opt)] formulates the environment optimization problem as a Quality Diversity (QD) optimization problem and optimizes the environments by searching for combination of tiles. The optimized environments have much higher throughput and are more scalable than human-designed ones. However, with this method, the search space of the QD algorithm grows exponentially with the size of the environment.

Therefore, instead of optimizing the environments directly, this paper proposes to optimize Neural Cellular Automata (NCA) environment generators via QD algorithms. We show that NCA-generated environments maintain consistent, regularized patterns regardless of environment size, significantly enhancing the scalability of multi-robot systems.

<!-- {{< figure src="figs/CMA-MAE_NCA_warehouse_gen.png" caption="A caption" numbered="true" width=800 >}} -->

<!-- ![A Figure](figs/CMA-MAE_NCA_warehouse_gen.png)
*image_caption* -->

## **Approach Overview**

We extend previous works [[1](/publication/zhang2023layout_opt),[2](https://arxiv.org/abs/2109.05489)] to use CMA-MAE [[3](https://arxiv.org/abs/2205.10752)] to search for a diverse collection of NCA generators with the objective and diversity measures computed from an agent-based simulator that runs domain-specific simulations in generated environments. Figure 1 provides an overview of our method. We start by sampling a batch of $b$ parameter vectors $\boldsymbol{\theta}$ from a multivariate Gaussian distribution, which form $b$ NCA generators. Each NCA generator then generates one environment from a fixed initial environment, resulting in $b$ environments. Figure 2 shows the architecture of the NCA generator.

We then repair the environments using a Mixed Integer Linear Programming (MILP) solver to enforce domain-specific constraints. After getting the repaired environments, we evaluate each of them by running an agent-based simulator for $N_e$ times, each with $T$ timesteps, and compute the average objective and measures. We add the evaluated environments and their corresponding NCA generators to both the optimization archive and the result archive. Finally, we update the parameters of the multivariate Gaussian distribution (i.e., $\mu$ and $\Sigma$) and sample a new batch of parameter vectors, starting a new iteration.
<!-- We run CMA-MAE iteratively with batch size $b$, until the total number of evaluations reaches $N_{eval}$. -->

<figure>
    <img src="figs/CMA-MAE_NCA_warehouse_gen.png"/>
    <figcaption><b>Figure 1:</b> Overview of our method. </figcaption>
</figure>


<figure>
    <img src="figs/NCA_model.png" width="850px"/>
    <figcaption><b>Figure 2:</b> NCA generator architecture. It is a convolutional neural network (CNN) with 3 convolutional layers of kernel size 3 × 3 followed by ReLU or sigmoid activations. 
    </figcaption>
</figure>


## **Results**

### NCA-generated Environments

Figure 3 shows the NCA-generated environments of different sizes, showing that the trained NCA generators can generate environments of different sizes with consistent regularized patterns. Figure 4 shows an example NCA generation process of 200 iterations.

<figure>
<div class="image-row">
  <figure>
    <img src="figs/kiva_large_200_agents_cma-mae_opt_entropy_throughput_hamming_a=5.png" alt="Description of Image 1">
    <figcaption>33 $\times$ 36</figcaption>
  </figure>
  <figure>
    <img src="figs/kiva_57x58_cma-mae_opt_entropy_throughput_hamming_a=5.png" alt="Description of Image 2">
    <figcaption>57 $\times$ 58</figcaption>
  </figure>
</div>

<div class="image-row">
  <figure>
    <img src="figs/kiva_81x80_cma-mae_opt_entropy_throughput_hamming_a=5.png" alt="Description of Image 3">
    <figcaption>81 $\times$ 80</figcaption>
  </figure>
  <figure>
    <img src="figs/kiva_xxlarge_cma-mae_global_opt_repaired_one_endpt_throughput-hamming_a=5_iter=200.png" alt="Description of Image 4">
    <figcaption>101 $\times$ 102</figcaption>
  </figure>
</div>
<figcaption><b>Figure 3:</b> NCA-generated environments of different sizes. </figcaption>
</figure>


<figure>
    <video playsinline autoplay loop muted width=60%>
        <source src="videos/nca_process.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
    <figcaption><b>Figure 4:</b> Example NCA generation process for environment of size 101 $\times$ 102. </figcaption>
</figure>


### Scalability

We then analyze the scalability of the environments by running simulations with varying numbers of agents and show the throughput. We compare our NCA-generated environments with those optimized by DSAGE [[1](/publication/zhang2023layout_opt)], the state-of-the-art environment optimization algorithm, and human-designed ones. Figure 5 shows the result. Our NCA-generated environments have higher throughput than the baseline environments with an increasingly larger gap with more agents.

<figure>
    <img src="figs/promo_result.png" width="850px"/>
    <figcaption><b>Figure 5:</b> Throughput with an increasing number of agents in environments of size 33 $\times$ 36 and 101 $\times$ 102.
    </figcaption>
</figure>

We further analyze the scalability of the NCA-generated environments in other sizes. Figure 6 shows the result. The y-axis illustrates two metrics: maximum mean throughput over 50 simulations (right) and the maximum scalability, defined as the agent count at this maximum (left).

<figure>
    <img src="figs/scalability.png" width="850px"/>
    <figcaption><b>Figure 6:</b> Scalability of NCA-generated environments.
    </figcaption>
</figure>

### Scaling Single-Agent RL Policy

We also train NCA generators for a single-agent maze domain and generate environments with consistent patterns with different sizes (18x18 and 66x66).
In this domain, we show that it is possible to scale a single-agent RL policy to larger environments with similar regularized patterns. We run an RL agent (a trained ACCEL [[4](https://arxiv.org/abs/2012.02096)] agent) trained in 18x18 environments in the 66x66 one for 100 times, resulting in a 93% success rate. The high success rate comes from the fact that the similar local observation space of the RL policy enables the agent to make the correct local decision and eventually arrive at the goal. Figure 7 shows the generated environments and videos of the agent solving the two environments.

<figure>
    <div class="video-row">
        <div class="video-container">
        <video playsinline autoplay loop muted>
            <source src="videos/maze_16.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <p class="video-caption">18 $\times$ 18</p>
        </div>
        <div class="video-container">
        <video playsinline autoplay loop muted>
            <source src="videos/maze_66.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <p class="video-caption">66 $\times$ 66</p>
        </div>
    </div>
    <figcaption><b>Figure 7:</b> NCA-generated maze environments which are solved by an RL agent trained in 18 $\times$ 18 environments.
    </figcaption>
</figure>


## **References**
[[1](/publication/zhang2023layout_opt)] Yulun Zhang, Matthew C. Fontaine, Varun Bhatt, Stefanos Nikolaidis, and Jiaoyang Li. Multi-robot coordination and layout design for automated warehousing. In *Proceedings of the International Joint Conference on Artificial Intelligence (IJCAI)*, pages 5503–5511, 2023.

[[2](https://arxiv.org/abs/2109.05489)] Sam Earle, Justin Snider, Matthew C. Fontaine, Stefanos Nikolaidis, and Julian Togelius. Illuminating diverse neural cellular automata for level generation. In *Proceedings of the Genetic and Evolutionary Computation Conference (GECCO)*, pages 68–76, 2022.

[[3](https://arxiv.org/abs/2205.10752)] Matthew Fontaine and Stefanos Nikolaidis. Covariance matrix adaptation map-annealing. In *Proceedings of the Genetic and Evolutionary Computation Conference (GECCO)*, pages 456–465, 2023.

[[4](https://arxiv.org/abs/2012.02096)] Jack Parker-Holder, Minqi Jiang, Michael Dennis, Mikayel Samvelyan, Jakob Foerster, Edward Grefenstette, and Tim Rocktäschel. Evolving curricula with regret-based environment design. In *Proceedings of the International Conference on Machine Learning (ICML)*, pages 17473–17498, 2022.