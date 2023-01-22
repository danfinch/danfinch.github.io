layout = include "~/layout.ls"

page: ({ tag }) -> layout "Articles tagged \"#{tag.name}\" - Dan Finch",
  h1 "Articles tagged \"#{tag.name}\""
  ul do
    tag.templates
      .sort (a, b) -> b.date - a.date
      .map -> li a href: (link-to it.url), it.title
