#import "state.typ": theme-state
#import "colors.typ": colors
#import "components/cover.typ": *
#import "components/header.typ": *
#import "components/problems.typ": *
#import "components/boxes.typ": *


#let inteli-handout(
  title: none,
  subtitle: none,
  course: none,
  module: none,
  logo: "inteli-logo.png",
  type: none,
  show-cover: true,
  heading-font: "New Computer Modern",
  content-font: "New Computer Modern",
  numbering-font: "Roboto",
  body,
) = {
  let self = (
    title: title,
    subtitle: subtitle,
    course: course,
    module: module,
    logo: logo,
    type: type,
    colors: colors,
    fonts: (
      heading: heading-font,
      content: content-font,
      numbering: numbering-font,
    ),
  )

  theme-state.update(self)

  set page(
    paper: "a4",
    margin: (top: 3cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
    header: make-header(),
    footer: context [
      #align(right)[
        #text(
          size: 10pt,
          fill: colors.primary,
          font: self.fonts.numbering,
        )[
          #counter(page).display("1/1", both: true)
        ]
      ]
    ],
  )

  // Typography settings
  show heading.where(level: 1): it => {
    // 1. Set the font and color for the header text itself
    set text(
      font: self.fonts.heading,
      size: 25pt,
      fill: self.colors.primary,
    )

    // Add some breathing room above the header
    v(1.5em, weak: true)

    // 2. Wrap the heading in an underline to create the stroke
    underline(
      stroke: 2pt + self.colors.secondary, // The color and thickness of the line
      offset: 0.3em, // How far below the text the line sits (tweak as needed)
      it, // The actual heading content
    )

    // Add breathing room below the header before the paragraph starts
    v(1.5em, weak: true)
  }

  set text(
    font: self.fonts.content,
    size: 14pt,
    fill: colors.neutral-darkest,
  )

  set par(
    leading: 0.6em,
    justify: true,
  )

  reset-counters()

  if show-cover {
    cover-page()
  }
  problem-counter.update(1)

  body
}
