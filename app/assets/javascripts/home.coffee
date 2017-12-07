# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('turbolinks:load', ->
  $uploadCrop = undefined

  readFile = (input) ->
    if input.files and input.files[0]
      reader = new FileReader

      reader.onload = (e) ->
        $uploadCrop.croppie 'bind', url: e.target.result
        $('.upload-demo').addClass 'ready'
        return

      reader.readAsDataURL input.files[0]
    return

  $uploadCrop = $('#upload-demo').croppie(
    viewport:
      width: 300
      height: 200
      type: 'square'
    boundary:
      width: 500
      height: 500)
  $('#upload').on 'change', ->
    readFile this
    return
  $('.upload-result').on 'click', (ev) ->
    $uploadCrop.croppie('result',
      type: 'canvas'
      size: 'original').then (resp) ->
      $('#imagebase64').val resp
      $('#form').submit()
      return
    return
  return
)
