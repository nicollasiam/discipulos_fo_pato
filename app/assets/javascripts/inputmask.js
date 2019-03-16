$(document).ready(function() {
  $('.dateMask').inputmask({
    mask: '99/99/9999',
    greedy: false,
    keepStatic: true
  });

  $('.currencyMask').inputmask('decimal', {
    alias: 'decimal',
    rightAlignNumerics: false,
    rightAlign: false,
    groupSeparator: '.',
    autoGroup: true,
    digits: 2,
    digitsOptional: false,
    greedy: false,
    radixPoint: ',',
    placeholder: '0',
    autoUnmask: true,
    removeMaskOnSubmit: true,
    unmaskAsNumber: true
  });
})
