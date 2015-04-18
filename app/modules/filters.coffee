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
        cartouches$ = $('#signatories ul li')
        chckboxes$  = $('#signatories input')

        changeHandler = (event, chckbox) ->
            if !chckbox?
                chckbox = event.target
            category = chckbox.parentElement.dataset.category
            checked  = chckbox.checked
            console.log category
            for cartouche$ in cartouches$
                if cartouche$.classList.contains(category)
                    if checked
                        cartouche$.style.display = ''
                    else
                        cartouche$.style.display = 'none'

        modifyAll = (allChecked) ->
            for chckbox in chckboxes$
                chckbox.checked = allChecked
            for cartouche$ in cartouches$
                if allChecked
                    cartouche$.style.display = ''
                else
                    cartouche$.style.display = 'none'

        document.querySelector('.filters').addEventListener 'change', changeHandler

        document.querySelector('.filters').addEventListener 'click', (event) ->
            target = event.target
            chckbox = target.previousElementSibling
            if chckbox?.nodeName == "INPUT"
                chckbox.checked = !chckbox.checked
                changeHandler(event, chckbox)

            if target.nodeName == "A"
                if target.classList.contains('none')
                    modifyAll(false)
                else
                    modifyAll(true)



