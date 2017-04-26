$(document).ready(function() {
  $(document).on('click', '.panel-btn', function() {
    $.patch('leds/' + $(this).attr('data-id'), { 'red': 255, 'green': 0, 'blue': 0 }, function() {
      console.log('OK');
    });
  });
});