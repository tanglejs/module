helmsman = require 'helmsman'

cli = helmsman
  localDir: 'bin'
  prefix: 'tangle-'
  usePath: true

cli.on '--help', ->
  console.log "\ntangle- - Tasks for working with tangle modules"
  console.log "\nFor detailed usage, view \"man tangle-\"."

argv = process.argv

cli.parse(argv)
