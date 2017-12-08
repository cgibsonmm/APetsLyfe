# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('turbolinks:load', ->
  $('.pet').each (index)->
    $('.pet-'+ index).click ->
      $('.card-' + index).toggle('slow')
)
# add active class
