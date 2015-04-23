$filters     = $ '.filters'
$signatories = $ '#signatories'


initButtons = ->
    $filters.on 'click', 'button', (event) ->
        $filters.find('input[type=checkbox]')
            .prop('checked', $(@).val() == 'all')
            .trigger('change')


initCheckboxes = ->
    $filters.on 'change', 'input[type=checkbox]', (event) ->
        $input = $(@)
        $signatories.toggleClass $input.val(), $input.prop('checked')


module.exports =
    init: ->
        initButtons()
        initCheckboxes()



