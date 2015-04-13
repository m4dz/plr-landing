locale = require 'locale/fr'


formBeforeSubmit = (arr, $form, options) ->
    $form.find('input[type=submit]').prop('disabled', true)


formOnSuccess = (response, status, xhr, $form) ->
    $form
        .find('.form').hide().end()
        .find('.onsucess').show()


formOnError = (xhr, response, status, $form) ->
    $form
        .find('input[type=submit]').prop('disabled', false).end()
        .find('.onerror').show()



do ($ = jQuery) ->

    $reflinks = $ '.internal'
    $reflinks.on 'click', ->
        $target = $($(@).attr 'href')
        $target.slideDown 650


    $page = $ '#page'
    $window = $ window
    $header = $page.find '.container > header'
    toggleFixed = $.throttle 35, ->
        refWidth = $page.outerWidth()
        delta = $window.scrollTop() / refWidth
        $header.toggleClass('fixed', delta > 0.5416667)
    $(document).on 'scroll', toggleFixed


    $.extend $.validator.messages, locale
    $('form').validate
        submitHandler: (form) ->
            $(form).ajaxSubmit
                beforeSubmit: formBeforeSubmit
                success: formOnSuccess
                error: formOnError
