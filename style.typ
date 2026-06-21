// Document-wide styling — page setup, typography, and element rules.
// Apply with `#show: cv` at the top of the document.

#let cv(body) = {
  set page(paper: "a4", margin: (x: 1.25cm, y: 1cm))
  set par(justify: true)
  set text(font: "Verdana", size: 10pt)

  // Section headings: centered, 12pt, with extra space below.
  show heading: set text(size: 12pt)
  show heading: set align(center)
  show heading: set block(below: 1em)

  // Links: bold navy, underlined.
  show link: set text(fill: navy, weight: "bold")
  show link: underline

  // Divider: a 6pt vertical gap between entries (matches the original CV).
  show divider: v(6pt)

  body
}

// Stack a section's entries, inserting a divider between each pair.
#let entries(..items) = items.pos().join(divider())
