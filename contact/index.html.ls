layout = include "~/layout.ls"

title: "Contact Me"
map: true
page: ({ title }) -> layout "#title - Dan Finch",
  h1 title
  markdown """

    - [errilaz.org](https://errilaz.org) - Open Source Projects
    - [LinkedIn](https://www.linkedin.com/in/danfinch/)
    - [GitHub](https://github.com/errilaz)
    - [Twitter](https://twitter.com/errilaz)
    - [NPM](https://www.npmjs.com/~errilaz)
    - [StackOverflow](https://stackoverflow.com/users/62104/dan)

    I am a US citizen living in Central Europe.

    My résumé is available to [download in PDF](</contact/DanFinch-Experience.pdf>).
  """