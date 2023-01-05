(_title, ..._content) ->
  html lang: "en",
    head do
      meta charset: "UTF-8"
      title _title
      link rel: "shortcut icon" type: "image/png" href: "/favicon.png"
      link rel: "stylesheet" href: "https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css"
      style do
        rule ".brand",
          color "white"
          font-size "24px"
          font-weight "bold"
          margin-right "30px !important"
        rule ".brand:hover",
          text-decoration "none"
        rule ".social",
          float "right"
    body do
      nav do
        a.brand href: "/", "Dan Finch"
        ul do
          li a href: "/", "About"
          li a href: "/experience", "Experience"
          li a href: "/tech", "Tech"
          li do
            a "Stories"
            ul do
              li a href: "/stories/product-catalog", "Product Catalog"
              li a href: "/stories/standing-ovation", "Standing Ovation"
              li a href: "/stories/hyperscript", "Hyperscript"
          li a href: "/contact", "Contact"
      main do
        _content
      footer do
        "Powered by "
        a href: "https://github.com/errilaz/pocketpress", "PocketPress"
        " | "
        a href: "https://github.com/danfinch/danfinch.github.io", "Source Code"
        div.social do
          a href: "https://www.linkedin.com/in/danfinch/",
            raw load-file "images/linkedin.svg"
