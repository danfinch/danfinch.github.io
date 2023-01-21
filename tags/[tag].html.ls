layout = include "~/layout.ls"

page: ({ tag }) -> layout "Articles tagged \"#{tag.name}\" - Dan Finch",
  h1 "Articles tagged \"#{tag.name}\""
  ul tag.articles.map ->
    li a href: "#{it.url}", it.title
