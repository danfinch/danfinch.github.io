(_title, ..._content) ->
  html lang: "en",
    head do
      meta charset: "UTF-8"
      title _title
      meta name: "darkreader-lock"
      meta name: "viewport" content: "width=device-width, initial-scale=1.0" 
      link rel: "shortcut icon" type: "image/png" href: "/favicon.png"
      link rel: "stylesheet" href: "https://cdn.jsdelivr.net/gh/kimeiga/bahunya/dist/bahunya.min.css"
      link rel: "alternate" type: "application/atom+xml" href: "/feed.xml" title: "Atom Feed"
      link rel: "alternate" type: "application/json" href: "/feed.json" title: "JSON Feed"
      live-reload!
      style do
        rule ".brand",
          color "white"
          font-size "24px"
          font-weight "bold"
          margin-right "30px !important"
          rule ":hover",
            text-decoration "none"
        rule ".social",
          float "right"
        rule "main li",
          list-style-type "\"⪧ \""
    body do
      nav do
        a.brand href: (link-to "/"), "Dan Finch"
        ul do
          li a href: (link-to "/"), "About"
          li a href: (link-to "/experience/"), "Experience"
          li a href: (link-to "/tech/"), "Tech"
          li a href: (link-to "/blog/"), "Blog"
          li a href: (link-to "/contact/"), "Contact"
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
