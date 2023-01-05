layout = include "../../layout.ls"

page: layout "Coldwater Creek Product Catalog",
  h1 "Coldwater Creek Product Catalog"
  markdown """
    ## The Project

    The project was explained to me as adding infinite scrolling and some faceted search features to our product catalog.
    While researching and planning I soon realized these requirements meant a complete rewrite of the product catalog.
    The shape of our data in SQL Server was not at all amenable to faceted search. Another difficulty was that my manager
    was exiting and there seemed to be no single person in charge of the project, leaving me to fill in a lot of blanks.

    Our existing catalog used a categorization system which required the content team to compose filters in a strange DSL:

    ```
      Attribute<Type>('Pants')
      =>Attribute<Color>('Blue')
    ```

    The syntax of this language seemed arbitrarily complex and the parser was very touchy. Several hundred of these filters
    were translated dynamically at run-time (and quite slowly) to LINQ-to-SQL expression trees and then run against SQL
    Server to collect products matching the criteria. Often, heavy traffic would cause this to take down our servers - the
    SQL queries generated were sometimes many thousands of characters long.

    My testing demonstrated that even if this query performance problem was solved, response times from DB to app servers
    would still be a major bottleneck. I was part of a conservative Microsoft stack team and putting caching layers like
    Redis and memcached between DB and app was a very hard sell.

    ## Server Side

    To implement a caching layer without raising any eyebrows, I simply pulled the entire product catalog into memory
    and put it behind an ASP.NET web service, using standard .NET collections to index it. A single, small VM in each
    datacenter would suffice as our cache, and our team would be capable of maintaining it without learning any scary
    open source tech!

    To make life better for the content team I both rewrote the old expression tree parser to be less brittle and added
    a new DSL so new filters were legible to the non-technical users:

    ```
      Type = Pants
      and Color = Blue
    ```

    Compiling these to LINQ-to-SQL still performed poorly, and the code was difficult to maintain. Instead, I generated
    raw T-SQL using Common Table Expressions. All filters were parsed and run at cache startup, taking about 15 seconds
    to run the hundreds of queries and index the entire catalog. Faceted search was then done with the in-memory collections
    rather than the relational tables, giving instant results. We would have been able to shut down about 80% of our web
    servers had this gone into production. Unfortunately, the company announced it was liquidating shortly before launch.

    ## Client Side

    I had never actually used an infinite scroll feature which met my usability standards. Most of our direct competitors
    had implemented this, and all were slow or buggy. All the existing techniques I looked into had big flaws. We had the
    specific requirement: *"if the user clicks the back button, she should wind up back at the same part of the infinite
    scroll she left"*. The few existing implementations which met this requirement were essentially hacks, and did not work
    reliably.

    Realizing that all browsers have this "where I left off" feature built-in for static pages, my solution was to
    pre-calculate and insert the CSS height of the entire results element at the server, where we knew 1) the fixed height
    of each result, and 2) how many results were on the page. Results were still fetched dynamically, but the user would
    *instantly* be where she left off when returning to the results. And no awkwardly shrinking/jumping scrollbar! I have
    yet to find this technique used anywhere else.

    When complete, I could go to our "All Products" listing, hold down the Page Down button, and see the entire product
    catalog fly past in a matter of seconds.
  """
