locale = require 'locale/fr'
$.extend $.validator.messages, locale


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


init = ->
    $('form').validate
        submitHandler: (form) ->
            $(form).ajaxSubmit
                beforeSubmit: formBeforeSubmit
                success: formOnSuccess
                error: formOnError


module.exports =
    init: init
