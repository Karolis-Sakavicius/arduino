class LedsController < ApplicationController
  def index
    @size = params[:size].to_i
  end

  def update
    LED.set(params[:id], params[:red], params[:green], params[:blue])
  end
end
