bg = "#181a1b"

(_title, ..._content) ->
  html lang: "en",
    head do
      meta charset: "UTF-8"
      title _title
      link rel: "shortcut icon" type: "image/png" href: "favicon.png"
      style do
        rule "body",
          background-color bg
          color "silver"
          font-family "sans-serif"
          font-size "20px"
        rule "main",
          width "400px"
          margin-left "auto"
          margin-right "auto"
    body do
      h1 "Dan Finch"
      main do
        _content
