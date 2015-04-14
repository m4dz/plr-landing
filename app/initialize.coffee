parallax      = require 'modules/parallax'
internalLinks = require 'modules/internal_links'
form          = require 'modules/form'

do ($ = jQuery) ->
    parallax.init()
    internalLinks.init()
    form.init()
