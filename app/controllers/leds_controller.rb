class LedsController < ApplicationController
  def index
  end

  def update
    LED.set(params[:id], params[:red], params[:green], params[:blue])
  end
end
