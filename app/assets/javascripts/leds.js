$(document).ready(function() {
  $(document).on('click', '.panel-btn', function() {
    $.patch('leds/' + $(this).attr('data-id'), { 'red': 255, 'green': 0, 'blue': 0 }, function() {
      console.log('OK');
    });
  });

  $(document).on('click', '.reset-btn', function() {
    $.delete('leds/' + $(this).attr('data-size'), function() {
      console.log('OK');
    });
  });
});