---
title: Towards Exploiting Geometry and Time for Fast Off-Distribution Adaptation
  in Multi-Task Robot Learning
publication_types:
  - "1"
authors:
  - KR Zentner
  - Ryan C Julian
  - Ujjwal Puri
  - admin
  - Gaurav S Sukhatme
author_notes:
  - Equal contribution
  - Equal contribution
publication: "In NeurIPS 2020 Workshop: Challenges of Real World Reinforcement Learning"
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
draft: false
featured: false
image:
  filename: featured
  focal_point: Smart
  preview_only: false
date: 2021-05-15T21:17:19.609Z
---
