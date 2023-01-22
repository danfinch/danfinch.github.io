layout = include "~/layout.ls"
tags = include "tags.partial.ls"

title: "Tags"
page: ({ site, title }) -> layout "#title - Dan Finch",
  h1 title
  tags site.tags