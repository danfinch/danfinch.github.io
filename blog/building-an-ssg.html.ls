layout = include "~/layout.ls"

date: "2023-01-21"
title: "Building an SSG"
tags: <[ pocketpress livescript ]>
page: ({ articles, url, tags, site, title }) -> layout "#title - Dan Finch",
  h1 title
  markdown """
    Am I making a blog engine so I can blog or making a blog so I can make a blog engine?    
  """
