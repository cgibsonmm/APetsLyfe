# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('turbolinks:load', ->
  $('.pet').each (index)->
    if index > 0
      $('.card-' + index).addClass('hidden')

  $('.pet').each (index)->
    $this_pet = $(this)
    $($this_pet).click ->
      $this_card = $('.card-' + index)

      $($this_card).toggle('slow')
)
