layout = include "~/layout.ls"

title: "Tech"
map: true
page: ({ title }) -> layout "#title - Dan Finch",
  style do
    rule ".stacks",
      text-align "center"
      rule "img",
        margin-right "10px"
    rule ".cards",
      display "grid"
      gap "1px"
      margin-top "30px"
    
    rule ".cards h4, .cards h5",
      margin-top "1rem"
    $media "(min-width: 600px)",
      rule ".cards",
        grid-template-columns "repeat(2, 1fr)"
    $media "(min-width: 900px)", rule ".cards",
      grid-template-columns "repeat(3, 1fr)"
      grid-template-rows "repeat(3)"
      rule ".big.card",
        grid-column "span 2"
    rule ".card",
      padding-left "10px"
      padding-right "10px"
      outline "solid 1px #808080"
  h1 title
  div.cards do
    div.card markdown """
      #### Languages
      - TypeScript ⭐
      - JavaScript ⭐
      - C# ⭐
      - F#
      - SQL
    """
    div.card markdown """
      #### Platforms
      - Node.js, Deno, and Bun ⭐
      - HTML + CSS ⭐
      - .NET & .NET Core ⭐
      - Linux
      - Electron
      - Browser Extensions
      - React Native
      - Cloudflare Workers
    """
    div.card markdown """
      #### Testing
      - Playwright ⭐
      - Jest ⭐
      - Vitest
      - React Testing Library
      - Mocha
      - Chai
      - Jasmine
      - Enzyme
      - Sinon
    """
    div.card markdown """
      #### Frontend
      - React ⭐
      - Vite ⭐
      - Zustand, Immer, and Redux ⭐
      - Babel, Webpack, Parcel ⭐
      - Emotion / Styled Components ⭐
      - Mithril ⭐
      - Vanilla Extract
      - SCSS, Stylus, Less, CSS Modules
      - Lodash, Immer, RxJS, Kefir
    """
    div.card markdown """
      #### Backend
      - Express ⭐
      - Koa ⭐
      - ASP.NET ⭐
      - Fastify
      - Hapi
      - Nest
    """
    div.card markdown """
      #### Data
      - Postgres ⭐
      - Redis ⭐
      - Sqlite
      - MongoDB
      - MySQL
      - ElasticSearch
      - SQL Server
    """
    div.card markdown """
      #### Cloud+Infra
      - Docker
      - Cloudflare
      - Firebase
      - Supabase
      - AWS
    """
    div.big.card markdown """
      #### Methodologies & Paradigms
      - Domain-driven design (DDD)
      - TDD & BDD, unit testing, & E2E testing
      - Object-Oriented and Functional Programming
      - SOLID Principles
      - REST & Microservices
      - DevOps, CI/CD, Infrastructure as Code
      - RDBMS & NoSQL
      - Agile & Scrum
      - Unix philosophy
      - Responsive design
      - IoC & Dependency Injection
    """
  p "⭐ = deep experience"