---
title: Unitization - Logical Document Determination
summary: A software tool for prosecution attorneys to perform logical document determination electronically.
tags:
- Software Testing
- Record and Replay tool
- Android
date: 2021-05-13

authors:
  - Yang Li
  - Yizhou Sheng
  - admin
  - Jincheng Zhou
  - Changyu Zhu

# Author notes (optional)
author_notes:
  - Equal contribution
  - Equal contribution
  - Equal contribution
  - Equal contribution
  - Equal contribution

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  # caption: pyribs
  focal_point: Smart

links:
url_code: ""
url_pdf: ""
url_slides: "LDD_Genie.pdf"
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

In criminal cases, defense and prosecution attorneys rely on written documents to prepare and present their case. Transcripts, police reports, witness statements, search warrants, correspondence, documentary evidence-all these materials are typically delivered to the lawyers either printed on paper or scanned in bulk to PDF. Even information that started out in electronic form, such as email, photographs, text messages, and social media, often has been “printed out” by the time it gets to the attorneys on a case. This makes it hard to search for information and hard to organize the case materials or eliminate duplicate documents. The problem is compounded when email and social media records are delivered “printed out” because structured metadata and the family relationships between records are lost. Thus, it can make it difficult for prosecutors to be sure that they have turned over to the defendant all the information they have, and hard for defendants to catalog what they have received and be sure that it is complete. Time spent manually organizing a “document dump” is time taken away from critical preparation, including discovering inculpatory and exculpatory evidence. This is an especially grave problem for Conviction Review units because they typically are stuck with archived files that may be decades old.

The same problem of un-jumbling digitized documents confronts journalists and activists who use transparency laws to obtain public records, because many public agencies do not have processes in place to deliver information in any other way than “printed out.” This is a well-known problem in e-discovery. It is called “logical document determination” (LDD). And corporate lawyers have a solution: they can pay a vendor by the page to perform LDD. Often LDD is a manual process! It is done by paralegals who literally scroll through PDFs, inserting bookmarks wherever a new document begins. Local government agencies such as the DA and Public Defender can’t afford to do that. Neither can citizen journalists or public interest lawyers.

In this project, we implemented a system that can perform LDD automatically. The system will take a searchable PDF as input and identify logical document boundaries. Then it will display the results in a simple quality-control interface where a user can approve or correct the system’s classifications. Finally, the system will burst the PDF’s at logical boundaries.

