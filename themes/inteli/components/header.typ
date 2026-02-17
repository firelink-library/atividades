/* Feature: Headers/footers - User requested in Q8 */
// Header component for content pages

#import "../colors.typ": colors

#let assets_dir = "../assets/"

#let make-header(ctx) = {
  context {
    grid(
      columns: (1fr, auto),
      gutter: 1cm,
      align(left + bottom)[
        #if title != none {
          text(font: ctx.heading-font, size: 12pt, fill: colors.neutral-darkest)[
            #ctx.title
          ]
        }
      ],
      align(right + top)[
        #if ctx.logo != none {
          image(assets_dir + ctx.logo, width: 1.5cm)
        }
      ],
    )
    // Separator line
    line(length: 100%, stroke: 0.5pt + colors.primary)
  }
}
