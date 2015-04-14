module.exports =
    init: ->
        $faq = $ '#faq'
        $faq.on 'click', 'dt, dd[aria-expanded]', ->
            $dd = if @tagName.toLowerCase() is 'dd' then $(@) else $(@).next('dd[aria-expanded]')
            $dd.attr 'aria-expanded', not($dd.attr('aria-expanded') is 'true')
