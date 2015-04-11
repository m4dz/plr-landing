do ($ = jQuery) ->

    $reflinks = $ '.internal'
    $reflinks.on 'click', ->
        $target = $($(@).attr 'href')
        $target.slideDown 650

    window.fnames = new Array()
    window.ftypes = new Array()
    fnames[2]='LNAME'
    ftypes[2]='text'
    fnames[1]='FNAME'
    ftypes[1]='text'
    fnames[0]='EMAIL'
    ftypes[0]='email'
    fnames[3]='COMPANY'
    ftypes[3]='text'


$mcj = jQuery.noConflict(true)
