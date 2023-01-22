layout = include "~/layout.ls"

title: "Experience"
map: true
page: ({ title }) -> layout "#title - Dan Finch",
  h1 title
  markdown """
    #### Independent Consultant
    > Dec 2014 - Present (Remote)

    My recent freelance work has included:

    - Created a mobile social network app for a startup conference and shared working space provider. This was written in functional TypeScript and React Native, with some Python/Django and Postgres on a Heroku backend.
    - Consulted on JavaScript and front-end tech for Bitbanger Labs for their ColorSpike hybrid mobile app built on Cordova.
    - Wrote a Chrome extension using the Mithril framework to inspect advertisements embedded in web pages for Bringhub.
    - Designed and prototyped an app and backend for a IOT equipment monitoring startup in Sandpoint, ID using React, ElasticSearch, and Postgres.
    - Created an Electron app connected to the QuickBooks API to build quotes for a greenhouse manufacturer.

    #### RiskLens - Senior Software Engineer
    > Jun 2017 - Dec 2017 (Spokane, WA)

    Helped lead the front-end development of FAIR-U - a React + Redux-based app backed by C#, Sql Server, and
    Azure & transitioned the team to TypeScript and other modern front-end tools. Gained experience with a
    security-focused and process-intensive team.

    #### TenX Logic - Contract Developer
    > Oct 2015 - Mar 2016 (Remote)

    This project for the oil + gas industry targeted the Mono platform on ARM processors. I designed and
    implemented a C#-based driver model to control equipment in the field, with a frontend written in AngularJS.

    #### Kochava - Senior Developer
    > Apr 2014 - Nov 2014 (Sandpoint, ID)

    Worked on infrastructure and systems to manage large volumes of real-time analytics data. I tackled
    complex challenges requiring constant inventiveness and collaboration to help the company scale at
    a rapid rate.

    My work centered around Node.js, Redis, Linux, and MongoDB. I also led the early implementation of a
    scalable high-traffic analytics backend.

    #### Coldwater Creek - Web Developer
    > Oct 2012 - Apr 2014 (Sandpoint, ID)

    Worked with many teams to finish an amazing number of projects. My work on both internal tooling and
    customer experience put the company ahead of its industry in many respects.

    - Implemented a product search which outperformed all competitors, including a novel infinite scrolling method.
    - Provided an array of features and user interfaces widgets for website with around one million hits per day.
    - Wrote or re-wrote around 30 internal web-driven tools for e-commerce & marketing teams.
    - Wrote custom jQuery UI powered framework and widgets for tool suite.
    - Initiated effort to significantly improve client-side page load performance.
    - Created a framework allowing mutual embedding between MVC and WebForms to allow a smooth transition off of legacy code.
    
    #### Promitheia - Technical Director
    > Sep 2006 - Sep 2012 (Austin, TX)

    As co-founder of this startup I was responsible for software design, programming, project management,
    operations, testing, maintenance, and security.

    - Created complex e-commerce website featuring retail and affiliate marketing management. Owner of dozens of projects within the company.
    - Configured and managed production web servers including Microsoft IIS and LAMP stack.
    - Worked closely with DBA on data-driven applications powered by SQL Server 2008 and ADO.NET.
    - Analyzed and selected supporting software and services, including early adoption of technologies such as ASP.NET MVC, jQuery, F#, Amazon Web Services, and distributed source control.
    - Developed solutions using Service Oriented Architecture (SOA), WCF, and Windows services. Integrated software with various cloud data and web service providers, including AWS, Authorize.NET, and Zencoder.
    - Studied and implemented e-commerce best practices, web security standards, and PCI compliance.

    #### Mercury ML - Founder
    > 2002 - 2004 (Lapeer, MI)

    I got my start right out of high school helping to scale two companies out of working with unwieldy spreadsheets.

    - Released two major versions of a VB6 application to catalog marketing affiliates, track orders, and calculate payouts.
    - Wrote and administered affiliate websites in Classic ASP and VBScript.
  """
  