Polyglot = require 'node-polyglot'
slug = require 'slug'

{signatories} = require './app/data/_signatories'


getLocale = (lang) ->
    moduleName = "./app/locales/#{lang}"
    new Polyglot phrases: require moduleName


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


    plugins:
        jadePages:
            destination: (path) ->
                path.replace /^app[\/\\](.*)\.static\.jade$/, "$1.html"
            jade:
                pretty: yes
                locals:
                    slug: slug
                    getLocale: getLocale
                    signatories: signatories

        autoprefixer:
          browsers: ['last 2 version', '> 1%', 'IE 8']
          cascade: false


    overrides:
        production:
            plugins:
                off: ['browser-sync-brunch']
                jagePages:
                    jade:
                        pretty: no
