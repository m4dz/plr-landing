$page = $ '#page'
$window = $ window


toggleFixed = $.throttle 35, ->
    refWidth = $page.outerWidth()
    delta = $window.scrollTop() / refWidth
    $page.toggleClass('fixed', delta > 0.5416667)


module.exports =
    init: ->
        $(document).on 'scroll', toggleFixed
