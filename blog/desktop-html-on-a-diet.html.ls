layout = include "post.layout.ls"

title: "Desktop HTML on a Diet"
tags: <[ web desktop ]>
date: "2023-05-25"
summary: "Apps 1000 times smaller than Electron"
author: "Dan Finch"
page: (meta) -> layout meta,
  markdown """
    
    **TL;DR**: Just launch a Chromium, it's probably already installed.
    
    ---
    
    ## fftext

    Recently a friend talked about making an ANSI banner for his shell's
    [MOTD](https://en.wikipedia.org/wiki/Message_of_the_day) and asked if I
    knew the best tool. I did not, but I had messed around with automatically
    converting images to [Unicode half blocks](https://en.wikipedia.org/wiki/Block_Elements)
    and took this as a sign to turn this code into a usable application.

    ### Avoiding Electron

    I decided to use [sharp](https://sharp.pixelplumbing.com), a Node.js-based image
    manipulation library. Because sharp has [not yet](https://github.com/lovell/sharp/issues/3336)
    been built for WASM, this was also a perfect opportunity to pursue ideas regarding desktop
    HTML applications without the **gigantic** [Electron](https://www.electronjs.org), which
    bundles both Chromium and Node.js with each application.

    Instead, I assume two external dependencies: a Chromium-based browser and Node.js. I launch
    the Chromium with a shell script, passing in these command line switches:

    - `--app=<url>` - This launches the browser window without any browser UI, just a window frame. This is how
      the "Create application shortcut" feature works.
    - `--user-data-dir=<dir>` - This isolates the application data from the user's normal browser windows.
    - `--load-extension=<dir>` - This automatically loads an unpacked extension. This extension starts
      the backend Node.js process and bridges communications between it and the browser app.
    - `--allow-file-access-from-files` - Since the launched URL is just an HTML file on the local filesystem,
      this switch allows the app to use the XMLHttpRequest API to read local files.

    ### Front-end

    I've recently accepted a position specializing in [React](https://react.dev) so chose it
    to keep my skills sharp. For the user interface I tried a few newer component frameworks and
    decided to go with [Mantine](https://mantine.dev), which has been very nice to work with. I've
    picked [Zustand](https://github.com/pmndrs/zustand) and [Immer](https://immerjs.github.io/immer/)
    for state management and am building the app with [Vite](https://vitejs.dev/).

    [![fftext 256 colors](images/fftext-256-thumb.png)](images/fftext-256.png)

    **[fftext](https://errilaz.org/fftext)** allows you to open, paste, or drop local images and convert them to ANSI-escaped
    Unicode half-block text. It includes a bunch of sliders to tweak the image so it works nicely
    with the chosen palette. The image above is using the 256-color mode, but you can also pick
    one of three popular 16-color palettes, or even 24-bit ANSI colors for supported terminals. It
    will also convert to IRC-escaped in 16 or 99 colors.

    [![fftext 16 colors](images/fftext-16-thumb.png)](images/fftext-16.png)
    [![fftext 24-bit colors](images/fftext-24bit-thumb.png)](images/fftext-24bit.png)

    It is currently alpha-quality but most features can be used (Linux-only). Source code is at [Github](https://github.com/errilaz/fftext).
    The resulting build is a [141K download](downloads/fftext-linux-preview-01.tar.xz) and installs about 20MB of dependencies - still much
    smaller than an Electron app would be.

    ## Calory

    I am tinkering on a reusable framework for building cross-platform apps in this way called
    [Calory](https://github.com/errilaz/calory). A test app, [a simple text editor](https://github.com/errilaz/metabolic),
    is a tiny [59K download](downloads/metabolic-linux-preview-01.tar.xz). Currently the launcher is written in C++ (fun to play with after 20+ years)
    but I will revert to shell scripts to reduce the resulting package sizes even more. On Windows, both CMD and
    PowerShell scripts open a terminal window, so I will use VBScript 😆.

    Calory will be backend-agnostic, so anything that can communicate with Chrome via the Native Messaging protocol can be used -
    Node.js, [Bun](https://bun.sh), C++, etc. I've since found a similar project which has the same perk - [NeutralinoJS](https://github.com/neutralinojs/neutralinojs).
    This uses a WebSocket and web server to achieve the same result. By sticking with Native Messaging in Calory, however, I aim
    to have the tiniest possible packages.

  """
