/* Feature: Info/warning/tip boxes - User requested in Q8 */
// Styled boxes for hints, notes, and warnings

#import "../colors.typ": colors

#let hint-box(content) = {
  block(
    width: 100%,
    fill: colors.neutral-light,
    stroke: (left: 3pt + colors.secondary),
    inset: (x: 1em, y: 0.8em),
    radius: (right: 3pt),
    [
      #text(weight: "bold", fill: colors.secondary)[Dica:]
      #v(0.2em)
      #content
    ],
  )
}

#let note-box(content) = {
  block(
    width: 100%,
    fill: colors.neutral-light,
    stroke: (left: 3pt + colors.primary),
    inset: (x: 1em, y: 0.8em),
    radius: (right: 3pt),
    [
      #text(weight: "bold", fill: colors.primary)[Nota:]
      #v(0.2em)
      #content
    ],
  )
}

#let warning-box(content) = {
  block(
    width: 100%,
    fill: rgb("fff5f5"),
    stroke: (left: 3pt + colors.secondary.lighten(50%)),
    inset: (x: 1em, y: 0.8em),
    radius: (right: 3pt),
    [
      #text(weight: "bold", fill: colors.secondary.lighten(50%))[Atenção:]
      #v(0.2em)
      #content
    ],
  )
}

// Export shorter names
#let hint = hint-box
#let note = note-box
#let warning = warning-box
