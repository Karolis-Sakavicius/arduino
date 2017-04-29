$(document).ready(function() {
  $(document).on('click', '.epilepsy-start', function() {
    $.post('epilepsy/', { size: $('#size').val(), times: $('#times').val(), interval: $('#speed').val() });
  });
});