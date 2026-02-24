#import "../state.typ": theme-state

#let problem-counter = counter("problem")
#let part-counter = counter("part")

#let problem(body) = {
  context {
    let ctx = theme-state.get()
    let prob-num = problem-counter.display()
    problem-counter.step()

    part-counter.update(1)

    grid(
      columns: (auto, 1fr),
      gutter: 0.5em,
      {
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
        ]
      },
      block(
        width: 100%,
        breakable: true,
        [
          #v(0.2em)
          #body
        ],
      ),
    )
    v(2em)
  }
}

// Problem parts (a), (b), (c) or (A), (B), (C)
#let part(label: auto, body) = {
  context {
    let ctx = theme-state.get()
    let part-label = if label == auto {
      let num = part-counter.get().first()
      let letters = ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
      if num <= letters.len() {
        letters.at(num - 1)
      } else {
        str(num)
      }
    } else {
      label
    }

    grid(
      columns: (auto, 1fr),
      gutter: 0.5em,
      {
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
              align(center + horizon)[#part-label],
            ),
          )
        ]
      },
      [
        #v(0.2em)
        #body
      ],
    )
    v(0.3em)
  }
}

// Reset counters function
#let reset-counters() = {
  problem-counter.update(0)
  part-counter.update(0)
}

// Set problem counter to specific number
#let set-problem-counter(n) = {
  problem-counter.update(n)
}
