# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('#0').attr('class','btn btn-primary data-btn')
  $('#confs0').css('display','inline')
  $('.data-btn').click ->
    $('.data-div').css('display','none')
    $('.data-btn').attr('class','btn data-btn')
    $(this).attr('class','btn btn-primary data-btn')
    $('#confs'+$(this).attr('id')).css('display','inline')

