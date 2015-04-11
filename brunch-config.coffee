exports.config =
    # See http://brunch.io/#documentation for docs.
    files:
        javascripts:
            joinTo:
                'scripts/app.js': /^app/
                'scripts/vendor.js': /^vendor/
            order:
                before: [
                    'vendor/scripts/jquery.js',
                ]
        stylesheets:
            joinTo: 'styles/app.css'
        templates:
            joinTo: 'scripts/templates.js'


    plugins:
        jade:
            options:
                pretty: yes

        static_jade:
            extension:  '.static.jade'

        autoprefixer:
          browsers: ['last 2 version', '> 1%', 'IE 8']
          cascade: false


    overrides:
        production:
            plugins:
                browserSync: off
                jade:
                    options:
                        pretty: no
