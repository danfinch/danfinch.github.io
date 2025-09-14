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
    $media "(min-width: 600px)", rule ".cards",
      grid-template-columns "repeat(2, 1fr)"
    $media "(min-width: 900px)", rule ".cards",
      grid-template-columns "repeat(3, 1fr)"
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
      - F# ⭐
      - LiveScript ⭐
      - Bash
      - Ruby
      - SQL
      - Civet
    """
    div.card markdown """
      #### Platforms
      - Node.js ⭐
      - Bun ⭐
      - HTML + CSS ⭐
      - .NET ⭐
      - .NET Core ⭐
      - Linux
      - Electron
      - Browser Extensions
      - React Native
      - Deno
      - Cloudflare Workers
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
      - Zustand ⭐
      - Babel ⭐
      - Webpack ⭐
      - Parcel ⭐
      - Emotion / Styled Components ⭐
      - Redux ⭐
      - Mithril ⭐
      - Vanilla Extract
      - SCSS, Stylus, Less, CSS Modules
      - Bootstrap, Foundation, Tailwind
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
      - Dapper
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
      - AWS, Azure, GCP
      - Heroku
      - Vercel
      - Netlify
      - DigitalOcean
    """
    div.card (grid-column "span 3"), markdown """
      #### Methodologies & Paradigms
      - Functional Programming & FRP
      - Domain-driven design (DDD)
      - SOLID Principles
      - OOP (multiple interpretations)
      - Microservices & SOA
      - DevOps, CI/CD, Infrastructure as Code
      - Relational model & NoSQL
      - Agile & Scrum
      - TDD & BDD, unit testing, & E2E testing
      - Unix philosophy
      - Metaprogramming 
      - Responsive design & progressive enhancement
      - Distributed SCM
      - Parallel, Concurrent, & Asynchronous Programming
      - REST
      - IoC & Dependency Injection
      - CQRS
    """
  p "⭐ = deep experience"