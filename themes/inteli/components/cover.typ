#import "../state.typ": theme-state
#let assets_dir = "../assets/"

#let cover-page() = context {
  let ctx = theme-state.get()
  set page(
    margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
    header: none,
    footer: none,
  )

  place(left + top, polygon(
    fill: ctx.colors.primary,
    (0%, 0%),
    (8%, 0%),
    (8%, 100%),
    (0%, 100%),
  ))
  place(left + top, polygon(
    fill: ctx.colors.secondary,
    (0%, 100%),
    (8%, 90%),
    (100%, 100%),
    (0%, 1000%),
  ))

  // Course info
  if ctx.course != none {
    place(
      bottom + center,
      dx: 3.5%,
      dy: -10%,
      [
        #if ctx.type != none {
          text(font: ctx.fonts.heading, size: 14pt, fill: gray.darken(70%))[#ctx.type]
        }

        #text(font: ctx.fonts.heading, size: 14pt, fill: gray.darken(70%))[#ctx.course]
        #if ctx.module != none {
          text(font: ctx.fonts.heading, size: 14pt, fill: gray.darken(70%))[ | módulo #ctx.module]
        }
      ],
    )
  }

  // Logo
  if ctx.logo != none {
    place(
      center + horizon,
      dx: 8%,
      dy: -20%,
      image(assets_dir + ctx.logo, width: 35%),
    )
  }

  // Title
  place(
    center + top,
    dx: 4%,
    dy: 40%,
    [
      #box(
        stroke: (
          paint: ctx.colors.secondary.lighten(20%),
          thickness: 2pt,
        ),
        inset: (x: 5%, y: 30%),
        [
          #if title != none {
            text(
              font: ctx.fonts.heading,
              size: 33pt,
              weight: "bold",
              fill: ctx.colors.primary,
            )[
              #ctx.title
            ]
          }
        ],
      )

      #if ctx.subtitle != none {
        text(
          font: ctx.fonts.heading,
          size: 16pt,
          fill: ctx.colors.primary,
        )[
          #ctx.subtitle
        ]
      }
    ],
  )

  v(2fr)

  pagebreak()
}
