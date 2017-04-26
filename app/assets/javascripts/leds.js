$(document).ready(function() {
  $(document).on('click', '#turn-on', function() {
    $.patch('leds/1', { 'red': 255, 'green': 0, 'blue': 0 }, function() {
      console.log('OK');
    });
  });
});