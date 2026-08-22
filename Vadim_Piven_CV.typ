#import "style.typ": cv, entries
#show: cv

#include "summary/content.typ"

= Professional Experience

#entries(
  include "jobs/04-mongodb.typ",
  include "jobs/03-milaboratories.typ",
  include "jobs/02-movavi.typ",
  include "jobs/01-kaspersky.typ",
)

= Education

#entries(
  include "education/02-hse.typ",
  include "education/01-mirea.typ",
)
