layout = include "~/layout.ls"

page: layout "Tech - Dan Finch",
  style do
    rule ".stacks",
      text-align "center"
    rule ".stacks img",
      margin-right "10px"
    rule "table.tech",
      display "table"
      width "100%"
      margin-top "30px"
    rule "table.tech td",
      padding-left "20px"
      padding-right "20px"
      border "solid 1px #404040"
    rule "table.tech h4, table.tech h5",
      margin-top "1rem"
  h1 "Tech"
  div.stacks do
    img src: "images/typescript.svg" alt: "TypeScript" width: "128" height: "128"
    img src: "images/reactjs.svg" alt: "ReactJS" width: "144" height: "128"
    img src: "images/nodejs.svg" alt: "NodeJS" width: "209" height: "128"
    img src: "images/netcore.svg" alt: ".NET Core" width: "128" height: "128"
  table.tech tbody do
    tr do
      td markdown """
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
      td markdown """
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
      td markdown """
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
    tr do
      td markdown """
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
      td markdown """
        #### Data
        - Postgres ⭐
        - Redis ⭐
        - MongoDB ⭐
        - Sqlite
        - MySQL
        - ElasticSearch
        - Sql Server
      """
      td markdown """
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
    tr do
      td colspan: 2, markdown """
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
      td markdown """
        #### Wish List
        - Zig
        - ReScript
        - ClickHouse
        - SolidJS
        - Svelte
        - TurboPack
      """
  p "⭐ = deep experience"