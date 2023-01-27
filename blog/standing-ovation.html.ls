layout = include "post.layout.ls"

title: "Standing Ovation"
tags: <[ story csharp web ]>
date: "2021-09-24"
summary: "Surprise applause for nice UX"
author: "Dan Finch"
page: (meta) -> layout meta,
  markdown """
    Between major projects at Coldwater Creek I was asked to rewrite a tool used by associates at
    our many retail locations. This was primarily used to look up products when a customer brought
    in a return. It was difficult to use as we had about 5 or so different types of SKUs for each
    product. Some were not supported by the tool and those that were had to be entered just right.

    The existing tool was written in ASP.NET 1.0 about 10 years prior and it was not possible to
    bring it into a newer framework. To avoid working with the spaghettified nightmare of Web Forms
    I spent about an hour writing a reflection-based MVC engine which lived inside a .ashx handler
    file. I created a more modern UI and made sure the SQL query was flexible enough to find any
    product by any of its SKUs.

    This took about a day and a half, it was released, and I heard nothing more about it. About
    a month later my manager came over to my desk and said "you got a minute? come with me". I
    followed him downstairs to a conference room filled with about 200 people and we walked to
    the front. He said "this is Dan, he rewrote the product lookup tool". The crowd erupted into
    applause and cheering. It turned out to be a meeting of our retail location managers and
    apparently I had eliminated one of their biggest headaches!
  """
