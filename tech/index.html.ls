layout = include "../layout.ls"

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
        ##### Familiar
        - Bash
        - Ruby
        - Python
        - PHP
        - Lua
      """
      td markdown """
        #### Platforms
        - Node.js ⭐
        - .NET ⭐
        - .NET Core ⭐
        - HTML5 & CSS ⭐
        - React Native
        - Electron
        - Chrome Extensions
        - Mono
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
        - Tailwind
        - Bootstrap, Foundation
        - Lodash, RxJS, Kefir, etc.
      """
    tr do
      td markdown """
        #### Backend
        - Express ⭐
        - Koa ⭐
        - ADO.NET ⭐
        - Fastify
        - Dapper
        - SignalR
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
        - Netlify
      """
    tr do
      td colspan: 2, markdown """
        #### Methodologies & Paradigms
        - Functional Programming & FRP
        - Domain-driven design (DDD)
        - OOP (multiple interpretations)
        - Microservices & SOA
        - Metaprogramming 
        - Agile & Scrum
        - Parallel, Concurrent, & Asynchronous Programming
        - REST
        - TDD & BDD
        - SOLID Principles
        - Distributed SCM
        - CI/CD
        - MVC
      """
      td markdown """
        #### Wish List
        - Zig
        - ReasonML
        - ClickHouse
        - SolidJS
        - Svelte
      """
  p "⭐ = deep experience"