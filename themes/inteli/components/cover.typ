#import "../colors.typ": colors
#let assets_dir = "../assets/"

#let cover-page(
  ctx,
) = {
  set page(
    margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
    header: none,
    footer: none,
  )

  place(left + top, polygon(
    fill: colors.primary,
    (0%, 0%),
    (8%, 0%),
    (8%, 100%),
    (0%, 100%),
  ))
  place(left + top, polygon(
    fill: colors.secondary,
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
          text(font: ctx.heading-font, size: 14pt, fill: gray.darken(70%))[#ctx.type]
        }

        #text(font: ctx.heading-font, size: 14pt, fill: gray.darken(70%))[#ctx.course]
        #if ctx.module != none {
          text(font: ctx.heading-font, size: 14pt, fill: gray.darken(70%))[ | módulo #ctx.module]
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
          paint: colors.secondary.lighten(20%),
          thickness: 2pt,
        ),
        inset: (x: 5%, y: 30%),
        [
          #if title != none {
            text(
              font: ctx.heading-font,
              size: 33pt,
              weight: "bold",
              fill: colors.primary,
            )[
              #ctx.title
            ]
          }
        ],
      )

      #if ctx.subtitle != none {
        text(
          font: ctx.heading-font,
          size: 16pt,
          fill: colors.primary,
        )[
          #ctx.subtitle
        ]
      }
    ],
  )

  v(2fr)

  pagebreak()
}
