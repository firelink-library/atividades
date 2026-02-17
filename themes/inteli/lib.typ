#import "colors.typ": colors
#import "components/cover.typ": cover-page
#import "components/header.typ": make-header
#import "components/problems.typ": code-exercise, multiple-choice, part, problem, reset-counters
#import "components/boxes.typ": hint, note, warning

// Counter for tracking imports (if needed for future features)
#let import-counter = counter("imported-problems")
#let assets_dir = "./assets"

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
  body,
) = {
  let self = (
    title: title,
    subtitle: subtitle,
    course: course,
    module: module,
    logo: logo,
    type: type,
    heading-font: heading-font,
    content-font: content-font,
  )

  set page(
    paper: "a4",
    margin: (top: 3cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
    header: make-header(self),
    footer: context [
      #align(center)[
        #text(size: 9pt, fill: colors.neutral-darkest)[
          #counter(page).display("1")
        ]
      ]
    ],
  )

  // Typography settings
  set text(
    font: content-font,
    size: 11pt,
    fill: colors.neutral-darkest.darken(70%),
  )

  set par(
    leading: 1.5em,
    justify: true,
  )

  reset-counters()

  if show-cover {
    cover-page(self)
  }

  body
}
