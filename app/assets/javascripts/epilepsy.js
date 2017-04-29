$(document).ready(function() {
  $(document).on('click', '.epilepsy-start', function() {
    $.post('epilepsy/', { size: 9, times: 30, interval: 100 });
  });
});