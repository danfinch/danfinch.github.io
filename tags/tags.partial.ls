(tags) ->
  ul tags.map ->
    li a href: (link-to "/tags/#{it.name}.html"), it.name, " (#{it.templates.length})"
