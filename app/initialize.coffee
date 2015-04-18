scroll        = require 'modules/scroll'
internalLinks = require 'modules/internal_links'
form          = require 'modules/form'
filters       = require 'modules/filters'

do ($ = jQuery) ->
    scroll.init()
    internalLinks.init()
    form.init()
    filters.init()
