hljs = require "highlight.js/lib/core"
hljs.register-language "livescript",  require "highlight.js/lib/languages/livescript"
hljs.register-language "dockerfile", require "highlight.js/lib/languages/dockerfile"
hljs.register-language "bash", require "highlight.js/lib/languages/bash"
hljs.register-language "typescript", require "highlight.js/lib/languages/typescript"
hljs.register-language "php", require "highlight.js/lib/languages/php"

highlight: (language, body) ->
  pre code raw (hljs.highlight body, { language }).value
