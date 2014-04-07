define [
], () ->
  (<%= _.titleize(settings['module:name']) %>, App, Backbone, Marionette, $, _) ->

    <%= _.titleize(settings['module:name']) %>.on 'start', ->
      App.logger.info "'<%= _.titleize(settings['module:name']) %>' module started"
