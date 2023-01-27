layout = include "post.layout.ls"
{ highlight } = include "~/utilities.ls"

title: "Introducing PocketPress SSG"
tags: <[ pocketpress livescript web dsl ]>
summary: "Improving my portfolio site got out of hand"
date: "2023-01-26"
author: "Dan Finch"
page: (meta) -> layout meta,
  markdown """
    **TL;DR**: PocketPress is available on [GitHub](https://github.com/errilaz/pocketpress)
    and [NPM](https://www.npmjs.com/package/pocketpress)

    ## Outgrowing Publii

    For a couple years I've maintained this site with [Publii](https://getpublii.com/),
    a great desktop-based static site generator (SSG) that can deploy to GitHub Pages.
    I decided to look around at different SSGs because maintaining certain pieces was
    becoming a little tedious through the customization options it provides. I went to
    the [JamStack list](https://jamstack.org/generators/) of generators to look around
    and saw a huge number of options (347 as of this post). After looking through many,
    I decided most of the well-maintained generators were quite large and complex, and
    I might as well write my own. Everyone else apparently does!

    ## A Small Idea

    For ultimate readability, I considered integrating a few minimal templating/preprocessing
    libraries such as [Pug](https://pugjs.org) and [Stylus](https://stylus-lang.com),
    which I have used for small SSR frameworks previously. Ultimately, though, I went
    with [LiveScript](https://livescript.net) for everything. LiveScript is one of my
    favorite tools for creating domain-specific languages. It is a full programming
    language with a terse, functional, indentation-based syntax. I'd also used it on
    the client side as a hyperscript (in place of JSX) in a very similar way.

    I started by scanning files and then prefixing them with a header which contained
    every HTML tag and CSS property as functions returning abstract nodes, then reading
    the tree and rendering markup. This allowed me to create very nice-looking templates:
  """
  highlight \livescript """
    html lang: "en",
      head do
        meta charset: "UTF-8"
        title "Example Page"
        meta name: "viewport" content: "width=device-width, initial-scale=1.0" 
        link rel: "shortcut icon" type: "image/png" href: "/favicon.png"
        style do
          rule ".brand",
            color "white"
            font-size "24px"
            font-weight "bold"
            margin-right "30px !important"
      body do
        nav do
          a.brand href: "/", "Dan Finch"
          ul do
            li a href: "/", "About"
            li a href: "/experience/", "Experience"
            li a href: "/tech/", "Tech"
            li a href: "/blog/", "Blog"
            li a href: "/contact/", "Contact"
        main do
          "..."
  """
  markdown """
    I also put a proxy around the element functions which allows class names to be
    added with the `.` syntax. In the above example, `a.brand` becomes `<a class="brand">`.

    ## Optimizing Performance

    As small as my site is, the generation was quite slow. This is because I was appending a
    giant list of locals to each template (the HTML element and CSS property functions) and
    then compiling through LiveScript and `eval`ing. To fix this, I instead forked a child
    process which defined these functions once, in global scope, and then ran each template.
    This sped the generator up considerably and also gave me accurate line numbers when an
    error happened.

    ## Optimizing DX

    It was annoying to have to run the generator in the terminal, switch to the browser, then
    refresh each time I made a change, so I added a watch mode with [chokidar](https://github.com/paulmillr/chokidar).
    I wanted live reload, too, but I didn't want to import or maintain an HTTP server just for
    this feature - I like being able to preview the site locally. `fetch` and XHR cannot be used
    with `file:` URLs, so instead PocketPress embeds a `<script>` tag which stores a timestamp,
    sets a timer, then removes itself. When the timer fires (one second later), the `<script>` tag
    is re-added to the page. If PocketPress has updated that script in the meantime, it will observe
    that the timestamp has changed and will refresh the page.

    ## Feature Explosion

    In the weeks since I've started the project I keep thinking of new things to add, some of which I
    actually need and others that just seem appropriate. PocketPress now supports complex nested CSS
    rules & at-rules, many blogging features, and standalone generation of `.css` and `.md` files -
    the latter of which I am using to create the [awesome-js-runtimes](https://github.com/errilaz/awesome-js-runtimes)
    list.

    What started as a simple utility to maintain my personal site has become a very enjoyable project
    to work on & use. I would love feedback, issues, etc. It is published on [NPM](https://www.npmjs.com/package/pocketpress)
    and the source code is available at [GitHub](https://github.com/errilaz/pocketpress). The best example
    of its usage is the [source code for this site](https://github.com/danfinch/danfinch.github.io).

  """