layout = include "~/layout.ls"
tags = include "~/tags/tags.partial.ls"

title: "Blog"
map: true
page: ({ title, site }) -> layout "#title - Dan Finch",
  h1 title
  table tbody do
    site.templates
      .filter -> /\/blog\//.test it.url
      .filter -> not it.url.ends-with "index.html"
      .sort (a, b) -> b.date - a.date
      .map -> tr do
        th width: 200, a href: (link-to it.url), it.title
        td it.summary
        td it.date.to-locale-date-string!
  h2 "Tags"
  tags site.tags
