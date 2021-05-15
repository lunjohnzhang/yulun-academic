---
title: RERAN+
summary: New scheduling mechanism for record and replay for Android.
tags:
- Software Testing
- Record and Replay tool
- Android
date: "2018-10-02T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  # caption: pyribs
  focal_point: Smart

links:
url_code: "https://github.com/lunjohnzhang/RERAN"
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

The quality assurance of Android apps requires the use of record and replay tools. The tools can help software developers to more efficiently recreate and address software issues. {{< staticref "http://www.cs.ucr.edu/~neamtiu/pubs/icse13gomez.pdf" "newtab" >}}A previous work{{< /staticref >}} presented an approach and tool named {{< staticref "https://www.androidreran.com/software.php" "newtab" >}}RERAN{{< /staticref >}} that permits record-and-replay for the Android smartphone platform. RERAN directly captures the low-level event stream on the phone, which includes both GUI events and sensor events, and replaying it with microsecond accuracy.

However, the tool is too old to use today and there are logical errors in the tool. In particular, the recording suffers from serious lagging which would affect the replay of time-sensitive apps. In this project, we attempt to analyze and resolve this issue by proposing an alternative scheduling algorithm for the RERAN tool.