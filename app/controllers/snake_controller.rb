class SnakeController < ApplicationController
  def index
    LED.reset(9)
  end
end
