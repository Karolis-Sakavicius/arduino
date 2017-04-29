class EpilepsyController < ApplicationController
  def index
  end

  def update
    red = rand(256)
    green = rand(256)
    blue = rand(256)
    LED.fill_color(params[:id].to_i, red, green, blue)

    render json: { red: red, green: green, blue: blue }
  end
end
