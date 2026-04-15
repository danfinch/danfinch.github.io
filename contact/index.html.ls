layout = include "~/layout.ls"

title: "Contact Me"
map: true
page: ({ title }) -> layout "#title - Dan Finch",
  h1 title
  markdown """

    - [LinkedIn](https://www.linkedin.com/in/danfinch/)
    - [GitHub](https://github.com/errilaz)

    I am a US citizen living in Central Europe with my wife and sons.

  """