layout = include "~/layout.ls"

title: "Tags"
page: ({ site, title }) -> layout "#title - Dan Finch",
  h1 title
  ul site.tags.map ->
    li a href: "/tags/#{it.name}.html", it.name
