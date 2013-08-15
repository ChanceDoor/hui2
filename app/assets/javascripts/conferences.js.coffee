# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('.day').click ->
    $('#pop-'+$(this).attr('flag')).css('margin-top',window.pageYOffset+50-($(this).height() / 2 ))

  cw = $('.day').width();
  $('.day').css({'height':cw+'px'});
  $('.day img').css({'clip':'rect(0px '+cw+'px '+cw+'px 0px)'});

  $(window).resize ->
    cw = $('.day').width();
    $('.day').css({'height':cw+'px'});
    $('.day img').css({'clip':'rect(0px '+cw+'px '+cw+'px 0px)'});
