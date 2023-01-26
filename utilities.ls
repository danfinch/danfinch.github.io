hljs = require "highlight.js/lib/core"
hljs.register-language "livescript",  require "highlight.js/lib/languages/livescript"

highlight: (language, body) ->
  pre code raw (hljs.highlight body, { language }).value
