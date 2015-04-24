$page     = $('#page')
$overlay  = $('.overlay')
$window   = $(window)
$document = $(document)


fixedScroll = ->
    $target = $ window.location.hash
    delta = $page.find('h1').outerHeight() + 10
    $window.scrollTop $target.offset().top - delta


toggleFixed = $.throttle 35, ->
    imageRatio = 350 / 960
    refWidth   = $page.outerWidth()
    delta      = $window.scrollTop() / refWidth
    $page.toggleClass('fixed', delta > imageRatio)


parallaxRefHeight = 0
resetParallaxRefHeight = ->
    parallaxRefHeight = $overlay.outerHeight() * 3

parallax = $.throttle 35, ->
    distance = $window.scrollTop() / parallaxRefHeight * 100
    $overlay.css 'transform', "translate(-50%, -#{distance}%)"


module.exports =
    init: ->
        if window.location.hash
            setTimeout fixedScroll, 250

        $window.on 'hashchange', fixedScroll
        $window.on 'resize', resetParallaxRefHeight
        resetParallaxRefHeight()

        $document.on 'scroll', toggleFixed
        $document.on 'scroll', parallax
