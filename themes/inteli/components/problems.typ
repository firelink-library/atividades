/* Feature: State/counter management - User requested in Q8 */
/* Feature: Problem types - User requested in Q8 */
// Problem types: numbered, parts (a,b,c), multiple choice, code exercises
// NOTE: NO answer spaces - removed diagram-placeholder, starter-code, correct

#import "../colors.typ": colors

// Counters for auto-numbering
#let problem-counter = counter("problem")
#let part-counter = counter("part")

// Main problem environment
#let problem(
  number: auto,
  title: none,
  points: none,
  body,
) = {
  context {
    // Increment problem counter
    let prob-num = if number == auto {
      problem-counter.step()
      problem-counter.display()
    } else {
      number
    }

    // Reset part counter for new problem
    part-counter.update(0)

    v(0.8em)

    block(
      width: 100%,
      [
        // Problem header
        #text(weight: "bold", size: 12pt, fill: colors.primary)[
          Questão #prob-num
          #if title != none {
            [- #title]
          }
          #if points != none {
            h(1fr)
            text(size: 10pt, style: "italic")[(#points pontos)]
          }
        ]

        #v(0.3em)

        // Problem body
        #body
      ],
    )

    v(0.5em)
  }
}

// Problem parts (a), (b), (c)
#let part(
  label: auto,
  body,
) = {
  context {
    part-counter.step()

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

    block(
      width: 100%,
      inset: (left: 1em),
      [
        #text(weight: "bold", fill: colors.neutral-darkest)[(#part-label)]
        #h(0.5em)
        #body
      ],
    )

    v(0.3em)
  }
}

// Multiple choice question
// NOTE: NO correct parameter (removed answer space)
#let multiple-choice(
  question,
  options: (),
) = {
  block(
    width: 100%,
    [
      // Question text
      #question

      #v(0.3em)

      // Options
      #for (i, option) in options.enumerate() {
        let letter = ("A", "B", "C", "D", "E", "F").at(i)
        block(
          inset: (left: 1em),
          [
            #text(fill: colors.neutral-darkest)[#letter)] #option
          ],
        )
        v(0.1em)
      }
    ],
  )
}

// Code exercise with syntax highlighting
// NOTE: NO starter-code parameter (removed answer space)
#let code-exercise(
  description,
  language: "python",
) = {
  block(
    width: 100%,
    [
      // Description only - NO starter code block
      #description
    ],
  )
}

// NOTE: diagram-placeholder() REMOVED - no answer spaces

// Reset counters function
#let reset-counters() = {
  problem-counter.update(0)
  part-counter.update(0)
}
