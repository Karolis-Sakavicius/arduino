$(document).ready(function() {
  $(document).on('click', '.epilepsy-start', function() {
    $.post('epilepsy/', { size: $('#size').val(), times: $('#times').val(), interval: $('#speed').val() });
  });

  $(document).on('click', '.epilepsy-off', function() {
    $.delete('epilepsy/' + $('#size').val(), {});
  });
});