glob = require 'glob'
path = require 'path'
_ = require 'lodash'
fs = require 'fs'

module.exports.prompt =  ->
  done = @async()

  glob 'app/**/tangle.json',
    sync: true
  , (err, matches) =>
    @targetChoices  = _.compact _.map matches, (match) =>
      parsed = JSON.parse fs.readFileSync(match)
      name = parsed.name
      type = parsed.type
      if (type == 'app' || type == 'module')
        value = path.relative('app/', path.dirname(match))
        return { name: "#{name} (#{type}) #{value}/", value: value }
      else
        return  null

  # See https://github.com/SBoudrias/Inquirer.js/blob/master/README.md
  @prompt [
    type: 'list'
    name: 'module:target'
    message: 'Add to which app or module?'
    choices: @targetChoices
  ,
    type: 'list'
    name: 'module:template'
    message: 'Choose a template'
    choices: [
      { name: 'empty', value: 'empty' }
      { name: 'region', value: 'region' }
    ]
    default: 'empty'
  ,
    type: 'input'
    name: 'module:name'
    message: 'Module name'
  ], (settings) =>
    @settings = settings
    done()
