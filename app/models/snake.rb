class Snake
  def initialize
    @snake_positions = [[0, 0], [0, 1], [0, 2]]
    @head_facing = 1
  end

  def draw(posX, posY, type)
    if type == 'body'
      LED.set(posY * 9 + posX, 0, 255, 0)
    elsif type == 'food'
      LED.set(posY * 9 + posX, 255, 255, 255)
    else
      LED.set(posY * 9 + posX, 0, 0, 0)
    end
  end

  def move(direction)
    if direction == 1
      draw(@snake_positions.first.first, @snake_positions.first.last, 'null')

      @snake_positions.each_with_index do |index, pos|
        new_position = [pos[0], pos[1] + 1]
        @snake_positions[index, new_position]
      end

      draw(@snake_positions.last.first, @snake_positions.last.last, 'body')
    end
  end
end