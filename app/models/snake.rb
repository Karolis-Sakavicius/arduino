class Snake
  def initialize
    @snake_positions = []
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

  
end