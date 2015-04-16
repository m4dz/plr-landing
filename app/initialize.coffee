scroll        = require 'modules/scroll'
internalLinks = require 'modules/internal_links'
form          = require 'modules/form'

do ($ = jQuery) ->
    scroll.init()
    internalLinks.init()
    form.init()
