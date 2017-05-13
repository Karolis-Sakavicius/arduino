$(document).ready(function() {
  snake_positions = [[0, 0], [0, 1], [0, 2]];
  head_direction = 1;

  arrayToId = function(posX, posY) {
    return (posX * 9 + posY);
  }

  $.patch('leds/1', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
    $.patch('leds/2', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
      $.patch('leds/3', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
        console.log('Ready to play0');
      });
    });
  });

  $('.snake-right').click(function() {
    $.patch('leds/' + arrayToId(snake_positions[0][0], snake_positions[0][1]), { 'red': 0, 'green': 0, 'blue': 0 }, function() {
      $.each(snake_positions, function(index, value) {
        snake_positions[index][1] = snake_positions[index][1] + 1;
      });
      $.patch('leds/' + arrayToId(snake_positions[snake_positions.length-1][0], snake_positions[snake_positions.length-1][1]), { 'red': 0, 'green': 0, 'blue': 255 });
    });
  });
});