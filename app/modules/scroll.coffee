$page     = $('#page')
$overlay  = $('.overlay')
$window   = $(window)
$document = $(document)


fixedScroll = ->
    $target = $ window.location.hash
    delta = $page.find('h1').outerHeight() + 10
    $window.scrollTop $target.offset().top - delta


toggleFixed = $.throttle 35, ->
    imageRatio = 520 / 960
    imageRatio = 720 / 635
    refWidth   = $page.outerWidth()
    delta      = $window.scrollTop() / refWidth
    $page.toggleClass('fixed', delta > imageRatio)


parallaxRefHeight = $overlay.outerHeight() * 6
parallax = $.throttle 35, ->
    distance = $window.scrollTop()
    $overlay.css 'transform', """
        translateX(-50%)
        translateY(-#{distance / parallaxRefHeight * 100}%)"""


module.exports =
    init: ->
        if window.location.hash
            setTimeout fixedScroll, 250

        $window.on 'hashchange', fixedScroll

        $document.on 'scroll', toggleFixed
        $document.on 'scroll', parallax
