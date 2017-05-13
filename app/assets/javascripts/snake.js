$(document).ready(function() {
  snake_positions = [[0, 0], [0, 1], [0, 2]];
  head_direction = 1;
  food_position = null;

  arrayToId = function(posX, posY) {
    return (posX * 9 + posY + 1);
  };

  headX = function() {
    return snake_positions[snake_positions.length-1][0];
  };

  headY = function() {
    return snake_positions[snake_positions.length-1][1];
  };

  tailX = function() {
    return snake_positions[0][0];
  };

  tailY = function() {
    return snake_positions[0][1];
  };

  drawTail = function(hposx, hposy) {
    $.patch('leds/' + arrayToId(tailX(), tailY()), { 'red': 0, 'green': 0, 'blue': 0 }, function() {
      snake_positions.shift();
      drawHead();
    });
  };

  drawFood = function() {
    $.patch('leds/' + arrayToId(food_position[0], food_position[1]), { 'red': 255, 'green': 255, 'blue': 255 }, function() {
      drawHead();
    });
  };

  drawHead = function() {
    $.patch('leds/' + arrayToId(headX(), headY()), { 'red': 0, 'green': 0, 'blue': 255 }, function() {
      setTimeout(gameTick, 750);
    });
  };

  drawScore = function() {
    $.patch('leds/9', { 'number': snake_positions.length, 'red': 255, 'green': 0, 'blue': 0 });
  }

  getRandomInt = function(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };

  generateNewFood = function() {
    food_position = null;
    while (!food_position) {
      new_position = [getRandomInt(0, 8), getRandomInt(0, 8)];
      taken = false;
      $.each(snake_positions, function(_index, value) {
        if (JSON.stringify(value) == new_position) {
          taken = true;
        }
      });

      if (!taken) {
        food_position = new_position;
      }
    }
    drawFood();
  };

  newGame = function() {
    $.patch('leds/1', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
      $.patch('leds/2', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
        $.patch('leds/3', { 'red': 0, 'green': 0, 'blue': 255 }, function() {
          console.log('Ready to play0');
        });
      });
    });

    snake_positions = [[0, 0], [0, 1], [0, 2]];
    head_direction = 1;

    generateNewFood();
  };

  gameTick = function() {
    if (head_direction == 1) {
      if (headY() + 1 < 9) {
        snake_positions.push([headX(), headY() + 1]);
        if (JSON.stringify([headX(), headY()]) != JSON.stringify(food_position)) {
          drawTail(headX(), headY());
        }
        else {
          generateNewFood();
        }
      }
      else {
        drawScore();
      }
    }
    else if (head_direction == 2) {
      if (headX() + 1 < 9) {
        snake_positions.push([headX() + 1, headY()]);
        if (JSON.stringify([headX(), headY()]) != JSON.stringify(food_position)) {
          drawTail();
        }
        else {
          generateNewFood();
        }
      }
      else {
        drawScore();
      }
    }
    else if (head_direction == 3) {
      if (headY() - 1 >= 0) {
        snake_positions.push([headX(), headY() - 1]);
        if (JSON.stringify([headX(), headY()]) != JSON.stringify(food_position)) {
          drawTail();
        }
        else {
          generateNewFood();
        }
      }
      else {
        drawScore();
      }
    }
    else {
      if (headX() - 1 >= 0) {
        snake_positions.push([headX() - 1, headY()]);
        if (JSON.stringify([headX(), headY()]) != JSON.stringify(food_position)) {
          drawTail();
        }
        else {
          generateNewFood();
        }
      }
      else {
        drawScore();
      }
    }
  };

  $('.snake-right').click(function() {
    head_direction = 1;
  });

  $('.snake-down').click(function() {
    head_direction = 2;
  });

  $('.snake-up').click(function() {
    head_direction = 4;
  });

  $('.snake-left').click(function() {
    head_direction = 3;
  });

  newGame();
});