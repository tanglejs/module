#!/usr/bin/env coffee

path = require 'path'

exports.command =
  description: 'Tasks for working with tangle modules'
  arguments: null # Optional arguments string to display

if require.main is module
  require path.join(__dirname, '..')
