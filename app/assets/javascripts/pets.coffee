# Script for pets
# Todo: need sizing for screens
$(document).on('turbolinks:load', ->
  $('.pet').each (index)->
    if index == 0
      $(this).addClass('active')
    else if index > 0
      $('.card-' + index).addClass('hidden')

  $('.pet').each (index)->
    $this_pet = $(this)

    $($this_pet).click ->
      $this_card = $('.card-' + index)

      $($this_pet).addClass('active')
      $($this_card).slideToggle('slow')
      $('.pet-card').not($this_card).slideUp('slow')
      $('.nav-link').not($this_pet).removeClass('active')
)
