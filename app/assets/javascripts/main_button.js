$(document).ready(function() {
  $('#actions-button').on('click', function() {
    if($(this).hasClass('active')) {
      // Esconde os botões
      $(this).removeClass('active');

      $('#add-expenditure').css('z-index', '-1');
      $('#add-expenditure').animate({
        left: "-=90",
        top: "-=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').css('display', 'none');
      });

      $('#add-income').css('z-index', '-1');
      $('#add-income').animate({
        left: "+=90",
        top: "-=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').css('display', 'none');
      });
    } else {
      // Mostra os botões
      $(this).addClass('active');

      $('#add-expenditure').animate({
        left: "+=90",
        top: "+=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').fadeIn();
        $(this).css('z-index', '0');
      });


      $('#add-income').animate({
        left: "-=90",
        top: "+=90",
      }, 200, function() {
        // Animation complete.
        $(this).find('label').fadeIn();
        $(this).css('z-index', '0');
      });
    }
  })
})
