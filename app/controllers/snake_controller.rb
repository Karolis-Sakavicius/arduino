class SnakeController < ApplicationController
  def index
    LED.off(81)
  end
end
