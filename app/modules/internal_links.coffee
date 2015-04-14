$reflinks = $ '.internal'


init = ->
    $('form[aria-hidden=true]')
        .hide()
        .removeAttr('aria-hidden')


reflink = (event) ->
    event.preventDefault()
    $this = $(@)
    $this.attr 'aria-hidden', true
    $target = $($this.attr 'href')
    $target.slideDown 650


module.exports =
    init: ->
        init()
        $reflinks.on 'click', reflink
