layout = include "~/layout.ls"

(_meta, ..._content) ->
  layout "#{_meta.title} - Dan Finch",
    style do
      rule "h1",
        margin-bottom 0
    h1 _meta.title
      aside "Tags: ",
        _meta.tags.map -> span do
          a (href: link-to "/tags/#it.html"), it
          " "
    div "by ",
      a href: (link-to "/"), "Dan"
      " at "
      _meta.date.toLocaleDateString()
    hr!
    _content
