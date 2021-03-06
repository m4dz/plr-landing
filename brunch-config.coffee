fs       = require 'fs'
extend   = require('util')._extend
marked   = require 'marked'
moment   = require 'moment'
Polyglot = require 'node-polyglot'
slug     = require 'slug'
yamlfm   = require 'yaml-front-matter'

marked.setOptions
    gfm: true
    breaks: true


{filters, date, signatories} = require './app/_data'
filteredSignatories = signatories
    .filter (obj) ->
        obj['Validé']? && obj['Validé'].toLowerCase() is 'x'
    .map (obj) ->
        copy = extend {}, obj
        copy['Catégorie'] = 'autre' unless obj['Catégorie'].length
        return copy


getLocale = (lang) ->
    moduleName = "./app/locales/#{lang}"
    new Polyglot phrases: require moduleName


getContent = (type, lang) ->
    path = "./app/_#{type}/#{lang}"
    if type in ['manifesto', 'press']
        fs.readFileSync("#{path}/content.md", encoding: 'utf8')
    else
        fs.readdirSync(path).map (filename) ->
            yamlfm.loadFront(fs.readFileSync("#{path}/#{filename}"))


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
                path.replace /^app[\/\\](.*)\.(html|atom)\.jade$/, "$1.$2"
            jade:
                pretty: no
                locals:
                    slug:        slug
                    getLocale:   getLocale
                    getContent:  getContent
                    marked:      marked
                    moment:      moment
                    filters:     filters
                    date:        date
                    signatories: filteredSignatories

        autoprefixer:
            browsers: ['last 2 version', '> 1%', 'IE 8']
            cascade:  false


    overrides:
        production:
            plugins:
                off: ['browser-sync-brunch']
