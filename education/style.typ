// Styling for education entries.

// An education entry.
//   degree         — e.g. "M.S." (normal weight)
//   field          — field of study (bold)
//   gpa            — e.g. "7.25 out of 10"
//   university/url — institution name and link
//   description    — one-line blurb about the institution
//   dates          — period of study (bold)
#let education(
  degree: "",
  field: "",
  gpa: "",
  university: "",
  url: "",
  description: [],
  dates: "",
) = {
  [#degree in *#field*, GPA: #gpa \ ]
  [#link(url)[#university], #description \ ]
  [*#dates*]
}
