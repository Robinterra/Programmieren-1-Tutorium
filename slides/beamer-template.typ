// -------------------------------------------------------

#let layouts = (
  "small": ("height": 9cm, "space": 1.4cm),
  "medium": ("height": 10.5cm, "space": 1.6cm),
  "large": ("height": 12cm, "space": 1.8cm),
)

#let template_beamer(
  content,
  author : [],
  title : [],
  subtitle: none,
  layout: "medium",
  ratio: 16/9,
  title-color: none,
  footer: true,
  date: none
) = {

  if layout not in layouts {
      panic("Unknown layout " + layout)
  }
  let (height, space) = layouts.at(layout)
  let width = ratio * height

  // Colors
  if title-color == none {
      title-color = blue.darken(50%)
  }
  let body-color = title-color.lighten(80%)
  let header-color = title-color.lighten(65%)
  let fill-color = title-color.lighten(50%)
  let default-red-color = rgb("#be1e3c")

  // Title Slide
  set document(
    title: title,
    author: author,
  )
  set heading(numbering: "1.a")

  set page(
    width: width,
    height: height,
    margin: (x: 0.5 * space, top: space, bottom: 0.6 * space),
    header: [
      #place(
        top + right,
        dy: 1.5em,
        image("figures/tu-bs-logo.svg", width: 12%)
      )
      #context {  
        let page = here().page()
        let headings = query(selector(heading.where(level: 2)))
        let heading = headings.rev().find(x => x.location().page() <= page)
        if heading != none {
          set align(top)
          set text(1.4em, weight: "bold", fill: title-color)
          v(space / 2)
          block(heading.body +
            if not heading.location().page() == page [
              #{numbering("(i)", page - heading.location().page() + 1)}
            ]
          )
        }
    }
    // Counter
    #if counter == true {
      v(-space/1.5)
      align(right+top)[
      // Dots before the current slide
      #context {
        let before = query(selector(heading).before(here()))
        for i in before {
          [
            #link(i.location())[
              #box(circle(radius: 0.08cm, fill: fill-color, stroke: 1pt+fill-color)) 
            ]
          ]
        }   
      }
      // current slide
      #context {
        let current = query(selector(heading).after(here())).first()
        link(current.location())[
              #box(circle(radius: 0.08cm, fill: fill-color, stroke: 1pt+fill-color)) 
            ]
      }
      // Dots after current slide
      #context {
        let after = query(selector(heading).after(here())).slice(1)
        for i in after {
          [
            #link(i.location())[
              #box(circle(radius: 0.08cm, stroke: 1pt+fill-color))
            ]
          ]
        }   
      }
    ] 
    }
  ],
    header-ascent: 0%,
    // Footer
    footer: context[
      #if footer == true {
        let page = here().page()
        let headings = query(selector(heading.where(level: 2)))
        let heading = headings.rev().find(x => x.location().page() <= page)
        set text(0.7em)
        //box()[]
        box()
        [
          #place(
            top + right,
            //dx: -1em,
            dy: 1pt,
            line(length: 10%, stroke: 3pt+default-red-color )
          )
          #place(
            top + right,
            line(length: 100%, stroke: 1pt+default-red-color)
          )
        ]
        v(-0.3cm)
        grid(
          columns: (1fr, 1fr, 0.1fr),
          align: (right,left, right),
          inset: 4pt,
          [#smallcaps()[#title]],
          [ #author ],
          [ #page ]
        )
  } 
    ],
    footer-descent:0.8em,
  )

  // Title Slide
  [
    #set page (
      footer: none,
      header: none,
      margin: 0cm
    )
    #v(4em)
    #block(
      inset: (x:0.5*space, y:1em),
      //fill: green,
      width: 100%,
      height: 60%,
      [
        #align(
          center + horizon,
          image("figures/titlepicture.jpg", width: 100%)
        )
      ]
      
      //align(bottom)[#text(2.0em, weight: "bold", fill: white, title)]
    )
    #place(
      center + horizon,
      dy: 6em,
      block(
        height: 40%,
        width: 91.5%,
        fill: rgb("#99bac8"),
        [
          #set align(left+top)
          #block(
            inset: 0.5em,
            width: 100%,
            [
              #text(2.0em, title)\
              #v(0.1em)
              #if subtitle != none {
                text(1.2em, subtitle)
                block(height: 0.1em, width: 100%)
              }
              #text(1.2em, author)\
              #if date != none {
                //v(0.05em)
                text(1em, date)
              }
            ]
          )

          #place(
            center + bottom,
            //dy: 1em,
            block(
              height: 10%,
              width: 100%,
              fill: rgb("#be1e3c"),
              []
            )
          )
        ]
      )
    )
    #place(
      top + left,
      dy: 1.5em,
      image("figures/tu-bs-logo.svg", width: 22%)
    )
    #place(
      top + right,
      dy: 0.5em,
      dx: -2em,
      image("figures/institute-logo.svg", width: 30%),
    )
  ]

  // Outline
  set outline(
    // target: heading.where(level: 1),
    indent: true,
    title: "Table of Contents"
  )
  show outline: set heading(level: 2)
  
  set bibliography(
    title: none
  )

  // Section Slides
  show heading.where(level: 1): x => {
    pagebreak(weak: true)
    set page(header:none, footer: none, margin: 0cm)
    place(
        top + right,
        dy: 1.5em,
        dx: -1em,
        image("figures/tu-bs-logo.svg", width: 12%)
      )
    set align(horizon+center)
    text(1.4em, fill: title-color)[#x.body]

  }
  show heading.where(level: 2): pagebreak(weak: true)
  show heading: set text(1.1em, fill: title-color)

  // Additional Styling (Term, Code)
  set text (size: 1.2em)
  show terms.item: it => {
    set block(width: 100%, inset: 5pt)
    stack(
      block(fill: header-color, radius: (top: 0.2em, bottom: 0cm), strong(it.term)),
      block(fill: body-color.lighten(20%), radius: (top: 0cm, bottom: 0.2em), it.description),
    )
  }

  show raw.where(block: false): it => {
    box(fill: body-color.lighten(40%), inset: 1pt, radius: 1pt, baseline: 1pt)[#text(size:8pt ,it)]
  }

  show raw.where(block: true): it => { 
    block(radius: 0.5em, fill: body-color.lighten(40%), 
          width: 100%, inset: 1em, it)
  }

  show list: set list(marker: (
    text(fill: title-color)[•],
    text(fill: title-color)[‣],
    text(fill: title-color)[-],
  ))

  show table: set table(
    stroke: (x, y) => (
      x: none,
      bottom: 0.8pt+black,
      top: if y == 0 {0.8pt+black} else if y==1 {0.4pt+black} else { 0pt },
    )
  )
  
  show table.cell.where(y: 0): set text(
    style: "normal", weight: "bold") // for first / header row

  set table.hline(stroke: 0.4pt+black)
  set table.vline(stroke: 0.4pt)

  content

};

// -------------------------------------------------------