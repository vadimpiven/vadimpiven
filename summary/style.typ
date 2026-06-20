// Styling for the summary block. Apply with `#show: summary`.
#let summary(body) = {
  // Document title: larger, centered.
  show title: set text(size: 14pt)
  show title: set align(center)
  body
}

// Centered, single-line list of contact links, separated by a gray bar.
#let contacts(..items) = align(
  center,
  items.pos().join(text(fill: gray)[#h(0.5em) | #h(0.5em)]),
)
