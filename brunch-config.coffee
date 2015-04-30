fs       = require 'fs'
slug     = require 'slug'
extend   = require('util')._extend
Polyglot = require 'node-polyglot'
marked   = require 'marked'
yamlfm   = require 'yaml-front-matter'


{filters, date, signatories} = require './app/_data'
{links}                      = require './app/_content'

filteredSignatories = signatories
    .filter (obj) ->
        obj['Validé'] && obj['Validé'].toLowerCase() is 'x'
    .map (obj) ->
        copy = extend {}, obj
        copy['Catégorie'] = 'autre' unless obj['Catégorie'].length
        return copy


getLocale = (lang) ->
    moduleName = "./app/locales/#{lang}"
    new Polyglot phrases: require moduleName


getFaq = (lang) ->
    faq = []
    path = "./app/_faq/#{lang}"
    fs.readdirSync(path).map (filename) ->
        faq.push yamlfm.loadFront(fs.readFileSync("#{path}/#{filename}"))
    return faq


exports.config =
    # See http://brunch.io/#documentation for docs.

    files:
        javascripts:
            joinTo:
                'scripts/app.js':    /^app/
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
                pretty: no
                locals:
                    slug:         slug
                    extend:       extend
                    getLocale:    getLocale
                    getFaq:       getFaq
                    marked:       marked
                    filters:      filters
                    date:         date
                    signatories:  filteredSignatories
                    links:        links.join "\n"

        autoprefixer:
            browsers: ['last 2 version', '> 1%', 'IE 8']
            cascade:  false


    overrides:
        production:
            plugins:
                off: ['browser-sync-brunch']
