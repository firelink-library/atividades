#import "../state.typ": theme-state
#let assets-dir = "../assets/"

#let make-header() = {
  context {
    let ctx = theme-state.get()
    grid(
      columns: (1fr, auto),
      gutter: 1cm,
      align(left + bottom)[
        #if title != none {
          text(font: ctx.fonts.heading, size: 12pt, fill: ctx.colors.neutral-darkest)[
            #ctx.title
          ]
        }
      ],
      align(right + top)[
        #if ctx.logo != none {
          image(assets-dir + ctx.logo, width: 1.5cm)
        }
      ],
    )
    // Separator line
    line(length: 100%, stroke: 0.5pt + ctx.colors.primary)
  }
}
