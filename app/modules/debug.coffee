controlCounters = ->
    cards   = $('.card').length
    filters = $('.filters label .counter')
                .map -> return +this.innerHTML.slice(1,-1)
                .toArray()
                .reduce (prev, curr) -> return prev + curr

    console.debug "Cards #: #{cards}"
    console.debug "Filters ∑: #{filters}"


controlLogos = ->
    $('.card').not(':has(.logo)').hide()


status = ->
    controlCounters()
    controlLogos()


module.exports = status
