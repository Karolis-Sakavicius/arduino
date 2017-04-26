class LedsController < ApplicationController
  def index
    @size = params[:size].to_i
  end

  def update
    LED.set(params[:id], params[:red], params[:green], params[:blue])

    render plain: 'OK'
  end

  def destroy
    LED.reset(params[:id].to_i)

    render plain: 'OK'
  end
end
