$ ->

    $reflinks = $ '.internal'
    $reflinks.on 'click', ->
        $target = $($(@).attr 'href')
        $target.slideDown 650
