// Styling for work experience entries.

// A work experience entry.
//   role         — job title (bold)
//   company/url  — employer name and link
//   description  — one-line blurb about the employer
//   dates        — period of employment (bold)
//   achievements — array of bullet points
//   technologies — comma-separated tech stack
#let job(
  role: "",
  company: "",
  url: "",
  description: [],
  dates: "",
  achievements: (),
  technologies: [],
) = {
  [*#role* \ ]
  [#link(url)[#company], #description \ ]
  [*#dates*]
  list(..achievements)
  [Key technologies: #technologies]
}
