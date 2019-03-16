$(document).ready(function() {
  $('#actions-button').on('click', function() {
    if($(this).hasClass('active')) {
      $(this).removeClass('active');

      $('#add-expenditure').animate({
        left: "-=90",
        top: "-=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').css('display', 'none');
      });

      $('#add-income').animate({
        right: "-=90",
        top: "-=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').css('display', 'none');
      });
    } else {
      $(this).addClass('active');

      $('#add-expenditure').animate({
        left: "+=90",
        top: "+=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').fadeIn();
      });


      $('#add-income').animate({
        right: "+=90",
        top: "+=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').fadeIn();
      });
    }
  })
})
