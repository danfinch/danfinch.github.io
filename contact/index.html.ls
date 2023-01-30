layout = include "~/layout.ls"

title: "Contact Me"
map: true
page: ({ title }) -> layout "#title - Dan Finch",
  h1 title
  markdown """
    I am available for consulting or employment and can be reached
    at [danfinch@outlook.com](mailto:danfinch@outlook.com) or social profiles:
    
    - [LinkedIn](https://www.linkedin.com/in/danfinch/)
    - [WellFound](https://angel.co/u/dan-finch-1)
    - [UpWork](https://www.upwork.com/freelancers/~01842f94c9a1afee78)
    - [GitHub](https://github.com/errilaz)
    - [Twitter](https://twitter.com/errilaz)
    - [NPM](https://www.npmjs.com/~errilaz)

    I am a US citizen traveling in Slovenia (Central European Time).
    I can be contracted through [UpWork](https://www.upwork.com/freelancers/~01842f94c9a1afee78)
    for EMEA companies unable to sponsor local work authorization.

    My open source portfolio is at [errilaz.org](https://errilaz.org).

    My résumé is available to [download in PDF](</contact/DanFinch-Experience.pdf>).
  """