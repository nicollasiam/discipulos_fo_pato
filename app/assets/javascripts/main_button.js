$(document).ready(function() {
  $('#actions-button').on('click', function() {
    if($(this).hasClass('active')) {
      // Esconde os botões
      $(this).removeClass('active');

      $('#add-expenditure').animate({
        left: "-=70",
        top: "-=70",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').css('display', 'none');
      });

      $('#add-income').animate({
        right: "-=70",
        top: "-=70",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').css('display', 'none');
      });
    } else {
      // Mostra os botões
      $(this).addClass('active');

      $('#add-expenditure').animate({
        left: "+=70",
        top: "+=70",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').fadeIn();
      });


      $('#add-income').animate({
        right: "+=70",
        top: "+=70",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').fadeIn();
      });
    }
  })
})
