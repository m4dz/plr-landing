$page     = $('#page')
$overlay  = $('.overlay')
$window   = $(window)
$document = $(document)


toggleFixed = $.throttle 35, ->
    refWidth = $page.outerWidth()
    delta = $window.scrollTop() / refWidth
    $page.toggleClass('fixed', delta > 0.5416667)


parallaxRefHeight = $overlay.outerHeight() * 6
parallax = $.throttle 35, ->
    distance = $window.scrollTop()
    $overlay.css 'transform', """
        translateX(-50%)
        translateY(-#{distance / parallaxRefHeight * 100}%)"""


module.exports =
    init: ->
        $document.on 'scroll', toggleFixed
        $document.on 'scroll', parallax
