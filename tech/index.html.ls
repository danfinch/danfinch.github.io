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
  div.stacks do
    img src: "images/typescript.svg" alt: "TypeScript" width: "20%" height: "auto"
    img src: "images/reactjs.svg" alt: "ReactJS" width: "20%" height: "auto"
    img src: "images/nodejs.svg" alt: "NodeJS" width: "20%" height: "auto"
    img src: "images/netcore.svg" alt: ".NET Core" width: "20%" height: "auto"
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
      - Python
      - PHP
      - SQL
      - Lua
    """
    div.card markdown """
      #### Platforms
      - Node.js ⭐
      - HTML & CSS ⭐
      - .NET ⭐
      - .NET Core ⭐
      - Linux
      - Electron
      - Browser Extensions
      - React Native
      #### Testing
      - Mocha
      - Chai
      - Jasmine
      - Enzyme
      - Sinon
    """
    div.card markdown """
      #### Frontend
      - React ⭐
      - Babel ⭐
      - Webpack ⭐
      - Parcel ⭐
      - Mithril ⭐
      - Redux ⭐
      - Next.js
      - Angular
      - SCSS, Stylus, Less
      - Bootstrap, Foundation, Tailwind
      - Lodash, RxJS, Kefir, Immer
      - NativeBase
    """
    div.card markdown """
      #### Backend
      - Express ⭐
      - Koa ⭐
      - ADO.NET ⭐
      - ASP.NET MVC/API ⭐
      - Fastify
      - Dapper
      - SignalR
      - Rails
      - Sinatra
      - Django
    """
    div.card markdown """
      #### Data
      - Postgres ⭐
      - Redis ⭐
      - MongoDB ⭐
      - Sqlite
      - MySQL
      - ElasticSearch
      - Sql Server
    """
    div.card markdown """
      #### Cloud
      - Docker
      - AWS
      - Azure
      - OpenStack
      - Firebase
      - GCP
      - Supabase
      - Heroku
      - Vercel
      - Netlify
      - DigitalOcean
    """
    div.card (grid-column "span 2"), markdown """
      #### Methodologies & Paradigms
      - Functional Programming & FRP
      - Domain-driven design (DDD)
      - OOP (multiple interpretations)
      - Microservices & SOA
      - DevOps, CI/CD, Infrastructure as Code
      - Relational model & NoSQL
      - Agile & Scrum
      - TDD & BDD, unit testing, & E2E testing
      - Responsive design, mobile-first, & progressive enhancement
      - SOLID Principles
      - Distributed SCM
      - Parallel, Concurrent, & Asynchronous Programming
      - REST
      - MVC
      - IoC & Dependency Injection
      - Metaprogramming 
      - CQRS
    """
    div.card markdown """
      #### Wish List
      - Zig
      - ReScript
      - ClickHouse
      - SolidJS
      - Svelte
      - TurboPack
    """
  p "⭐ = deep experience"