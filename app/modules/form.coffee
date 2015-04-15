locale = require 'locale/fr'
$.extend $.validator.messages, locale


beforeSubmit = (arr, $form, options) ->
    $form.find('input[type=submit]').prop('disabled', true)


onSuccess = ->
    $(@)
        .find('.form').attr('aria-hidden', true).end()
        .find('.onerror').attr('aria-hidden', true).end()
        .find('.onsuccess').attr('aria-hidden', false)


onError = ->
    $(@)
        .find('input[type=submit]').prop('disabled', false).end()
        .find('.onerror').attr('aria-hidden', false)


init = ->
    $('form').validate
        submitHandler: (form) ->
            $(form).ajaxSubmit
                beforeSubmit:    beforeSubmit
                error:           onError
                dataType:        "xml"
                statusCode:
                    0:   onSuccess.bind form
                    200: onSuccess.bind form
            return false


module.exports =
    init: init
