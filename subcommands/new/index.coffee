path = require 'path'
yeoman = require 'yeoman-generator'

module.exports = class ModuleGenerator extends yeoman.generators.Base
  constructor: (args, options, config) ->
    super(args, options, config)
    @args = args
    @options = options

    @sourceRoot path.join __dirname, 'templates'

    @on 'end', ->
      # Finish up
      conf = require('tangle-config').getConf()
      conf.file
        file: path.join( 'app', @settings['module:target'], 'tangle.json' )

      modules = conf.get 'modules'
      modules ||= {}

      name = @settings['module:name']
      modules[name] =
        path.join( @settings['module:target'], 'modules', name, 'index' )

      conf.set 'modules', modules
      conf.save (err) -> if err then throw err

ModuleGenerator::appPrompts = require('./prompts/module').prompt

ModuleGenerator::copyFiles = ->
  console.log @settings
  dir = path.join('app', @settings['module:target'], 'modules', @settings['module:name'])
  @mkdir dir
  @template 'empty/_index.coffee', path.join(dir, 'index.coffee')
  @template 'empty/_tangle.json', path.join(dir, 'tangle.json')
