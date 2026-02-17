#import "../state.typ": theme-state

#let problem-counter = counter("problem")
#let part-counter = counter("part")

#let problem(body) = {
  context {
    let ctx = theme-state.get()
    let prob-num = problem-counter.display()
    problem-counter.step()

    part-counter.update(1)

    block(
      width: 100%,
      [
        #grid(
          columns: (auto, 1fr),
          align: top,
          gutter: 0.5em,
          text(
            font: ctx.fonts.numbering,
            size: 9pt,
            weight: "bold",
            fill: ctx.colors.secondary,
          )[
            #box(
              circle(
                radius: 0.90em,
                stroke: 1.4pt + ctx.colors.secondary.lighten(10%),
                align(center + horizon)[#prob-num],
              ),
            )
          ],
          move(dy: 3.5pt)[
            #body
          ],
        )
      ],
    )
    v(2em)
  }
}

// // Problem parts (a), (b), (c)
// #let part(
//   label: auto,
//   body,
// ) = {
//   context {
//     let ctx = theme-state.get()
//     part-counter.step()
//
//     let part-label = if label == auto {
//       let num = part-counter.get().first()
//       let letters = ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
//       if num <= letters.len() {
//         letters.at(num - 1)
//       } else {
//         str(num)
//       }
//     } else {
//       label
//     }
//
//     block(
//       width: 100%,
//       inset: (left: 1em),
//       [
//         #text(weight: "bold", fill: ctx.colors.neutral-darkest)[(#part-label)]
//         #h(0.5em)
//         #body
//       ],
//     )
//
//     v(0.3em)
//   }
// }

// Reset counters function
#let reset-counters() = {
  problem-counter.update(0)
  part-counter.update(0)
}
