# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.menu').click ->
    $('#pop-'+$(this).attr('flag')).css('margin-top',window.pageYOffset+50-($(this).height() / 2 ))
