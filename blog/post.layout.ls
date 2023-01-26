layout = include "~/layout.ls"

(_meta, ..._content) ->
  layout "#{_meta.title} - Dan Finch",
    style do
      rule "h1",
        margin-bottom 0
      rule ".navigate",
        display "flex"
        width "100%"
        rule ".previous", flex 1
        rule ".next",
          flex 1
          text-align "right"
    h1 _meta.title
      aside "Tags: ",
        _meta.tags.map -> span do
          a (href: link-to "/tags/#it.html"), it
          " "
    div "by ",
      a href: (link-to "/"), "Dan"
      " at "
      _meta.date.to-locale-date-string!
    hr!
    _content
    hr!
    div.navigate do
      if _meta.previous
        div.previous do
          "Previous: "
          a href: (link-to _meta.previous.url), _meta.previous.title
      if _meta.next
        div.next do
          "Next: "
          a href: (link-to _meta.next.url), _meta.next.title