locale = require 'locale/fr'


formBeforeSubmit = (arr, $form, options) ->
    $form.find('input[type=submit]').prop('disabled', true)


formOnSuccess = (response, status, xhr, $form) ->
    $form
        .find('.form').hide().end()
        .find('.onsucess').attr 'aria-hidden', false


formOnError = (xhr, response, status, $form) ->
    $form
        .find('input[type=submit]').prop('disabled', false).end()
        .find('.onerror').attr 'aria-hidden', false



do ($ = jQuery) ->

    $('form[aria-hidden=true]')
        .hide()
        .removeAttr('aria-hidden')

    $reflinks = $ '.internal'
    $reflinks.on 'click', (event) ->
        event.preventDefault()
        $reflinks.attr 'aria-hidden', true
        $target = $($(@).attr 'href')
        $target.slideDown 650


    $page = $ '#page'
    $window = $ window
    toggleFixed = $.throttle 35, ->
        refWidth = $page.outerWidth()
        delta = $window.scrollTop() / refWidth
        $page.toggleClass('fixed', delta > 0.5416667)
    $(document).on 'scroll', toggleFixed


    $faq = $ '#faq'
    $faq.on 'click', 'dt, dd[aria-expanded]', ->
        $dd = if @tagName.toLowerCase() is 'dd' then $(@) else $(@).next('dd[aria-expanded]')
        $dd.attr 'aria-expanded', not($dd.attr('aria-expanded') is 'true')


    $.extend $.validator.messages, locale
    $('form').validate
        submitHandler: (form) ->
            $(form).ajaxSubmit
                beforeSubmit: formBeforeSubmit
                success: formOnSuccess
                error: formOnError
