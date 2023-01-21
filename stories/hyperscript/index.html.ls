layout = include "~/layout.ls"

title: "Pre-modern Hyperscript"
page: ({ title }) -> layout "#title - Dan Finch",
  h1 title
  markdown """
    I was working at Promitheia during the first days of "Web 2.0". AJAX was very popular but
    the tools to fill the gap between dynamic and static sites were not yet around. Server side
    rendering was necessary, but I still wanted to provide very interactive pages without adding
    a completely different client-side framework for rendering markup.

    I settled on what some called AHAH - Asynchronous HTML And HTTP - where the server rendered
    partial views via XMLHttpRequests which were inserted into the DOM. I made use of a number
    of non-standard HTML attributes to declaratively wire up these insertions. As a result very
    few widgets needed custom code. jQuery was patched at startup to rebind events when content
    was inserted. I was able to achieve performant and flashy interactions with careful use of
    jQuery (it is possible!) long before they became commonplace.

    Working with views in ASP.NET prior to the release of Razor was painful: unmaintainable soup
    markup was everywhere. As a result, many people were creating their own view engines. I did
    not have the bandwidth to create and maintain a custom view engine, let alone make it work
    with the IDE. 

    I decided to create a C#-based fluent DSL and write the views directly in the host language
    itself. People now call this hyperscript, and it is fairly common, but at the time (2008-ish),
    other programmers thought I was insane! This had many benefits - I did not have two syntaxes
    mixed up in the same file, I had all the support of my IDE (autocomplete, type checking), and
    I could package components as DLL files. Layout views could simply be written as methods with
    parameters for the "holes".

    In debug mode my view engine would set up a file watcher and auto-reload views as I worked on
    them; another perk which was scoffed at then but is now looked at as a standard feature of a web
    stack.
  """
