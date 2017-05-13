$(document).ready(function() {
  snake_positions = [];
  head_direction = 1;

  $.patch('leds/1', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
    $.patch('leds/2', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
      $.patch('leds/3', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
        console.log('Ready to play0');
      });
    });
  });
});