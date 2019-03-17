$(document).ready(function() {
  $('.month-row').on('click', function(){
    if($(this).hasClass('active')) {
      $(this).removeClass('active');

      $($(this).data('target')).fadeOut();
    } else {
      $(this).addClass('active');

      $($(this).data('target')).fadeIn();
    }
  })
})
