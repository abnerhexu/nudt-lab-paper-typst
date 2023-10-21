#let times = "Times LT Pro"
#let song = (times, "FZShuSong-Z01")
#let hei = (times, "FZHei-B01")
#let kai = (times, "FZKai-Z03")
#let xbsong = (times, "FZXiaoBiaoSong-B05")
#let fsong = (times, "FangSong_GB2312")
#let code = (times, "DejaVu Sans Mono")
#let nudtlabpaper(title: "", 
  author1: "", 
  id1: "", 
  author2: "", 
  id2: "", 
  advisor: "",
  jobtitle: "",
  lab: "",
  date: "",
  body) = {
  
  // Set the document's basic properties.
  set document(author: author1, title: title)
  set page(
    margin: (left: 30mm, right: 30mm, top: 30mm, bottom: 30mm),
  )

  // Title row.
  v(158pt)
  align(center)[
    #block(text(weight: 700, size: 30pt, font: hei, tracking: 15pt, "计算机造房子技术"))
  ]
  align(center)[
    #block(text(weight: 700, size: 30pt, font: song, tracking: 15pt, "本科实验报告"))
  ]

  v(103pt)
  pad(
    left: 1em,
    right: 1em,
    grid(
        columns: (80pt, 1fr),
        rows: (17pt, auto),
        text(weight: 700, size: 16pt, font: song, "实验名称："),
        align(center, text(weight: "regular", size: 16pt, font: song, title)),
        text(""),
        line(length: 100%)
    )
    // #block(text(weight: 700, 1.75em, title))
    // underline(text(weight: 700, size: 16pt, font: song, title))
  )

  // Author information.

  v(82.5pt)

  grid(
    columns: (0.25fr, 0.25fr, 0.25fr, 0.25fr),
    rows: (20pt, 8pt, 20pt, 8pt, 20pt, 8pt, 20pt, 8pt),
    text(size: 14pt, font: song, tracking: 9pt, "学员姓名"),
    align(center, text(size: 14pt, font: song, author1)),
    text(size: 14pt, font: song, tracking: 54pt, "学号"),
    align(center, text(size: 14pt, font: times, id1)),
    text(""),
    line(length: 100%),
    text(""),
    line(length: 100%),
    text(size: 14pt, font: song, tracking: 9pt, "学员姓名"),
    align(center, text(size: 14pt, font: song, author2)),
    text(size: 14pt, font: song, tracking: 54pt, "学号"),
    align(center, text(size: 14pt, font: times, id2)),
    text(""),
    line(length: 100%),
    text(""),
    line(length: 100%),
    text(size: 14pt, font: song, tracking: 9pt, "指导教员"),
    align(center, text(size: 14pt, font: song, advisor)),
    text(size: 14pt, font: song, tracking: 54pt, "职称"),
    align(center, text(size: 14pt, font: song, jobtitle)),
    text(""),
    line(length: 100%),
    text(""),
    line(length: 100%),
    text(size: 14pt, font: song, tracking: 9pt, "实验室"),
    align(center, text(size: 14pt, font: song, lab)),
    text(size: 14pt, font: song, tracking: 9pt, "实验时间"),
    align(center, text(size: 14pt, font: song, date)),
    text(""),
    line(length: 100%),
    text(""),
    line(length: 100%),
  )

  v(76.5pt)
  align(center, text(font: hei, size: 15pt, "国防科技大学教育训练部制"))

  pagebreak()
  
  set page(
    margin: (left: 30mm, right: 30mm, top: 30mm, bottom: 30mm),
    numbering: "i",
    number-align: center,
  )

  v(14pt)
  align(center)[
    #block(text(font: hei, size: 14pt, "《本科实验报告》填写说明"))
  ]

  v(14pt)
  text("")
  par(first-line-indent: 2em, text(font: song, size: 12pt, "实验报告内容编排应符合以下要求："))
  
  par(first-line-indent: 2em, text(font: fsong, size: 12pt, "（1）采用A4（21cm×29.7cm）白色复印纸，单面黑字。上下左右各侧的页边距均为3cm；缺省文档网格：字号为小4号，中文为宋体，英文和阿拉伯数字为Times New Roman，每页30行，每行36字；页脚距边界为2.5cm，页码置于页脚、居中，采用小5号阿拉伯数字从1开始连续编排，封面不编页码。"))

  par(first-line-indent: 2em, text(font: fsong, size: 12pt, "（2）报告正文最多可设四级标题，字体均为黑体，第一级标题字号为4号，其余各级标题为小4号；标题序号第一级用“一、”、“二、”……，第二级用“（一）”、“（二）” ……，第三级用“1.”、“2.” ……，第四级用“（1）”、“（2）” ……，分别按序连续编排。"))

  par(first-line-indent: 2em, text(font: fsong, size: 12pt, "（3）正文插图、表格中的文字字号均为5号。"))

  pagebreak()

  set page(
    margin: (left: 30mm, right: 30mm, top: 30mm, bottom: 30mm),
    numbering: "1",
    number-align: center,
  )

  set heading(numbering: "1.1")
  // set text(font: hei, lang: "zh")
  
  show heading: it => box(width: 100%)[
    #v(0.50em)
    #set text(font: hei)
    #counter(heading).display()
    // #h(0.5em)
    #it.body
  ]
  // Main body.
  set par(justify: true)

  body
}

#let para(t) = par(first-line-indent: 2em, text(font: song, size: 10.5pt, t))