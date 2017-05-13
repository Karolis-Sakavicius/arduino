class LedsController < ApplicationController
  def index
    @size = params[:size].to_i
    @state = JSON.parse(LED.current_state)['data']
  end

  def update
    if params[:number].nil?
      LED.set(params[:id], params[:red], params[:green], params[:blue])
    else
      LED.draw_number(params[:number], params[:red], params[:green], params[:blue])
    end

    render plain: 'OK'
  end

  def destroy
    LED.reset(params[:id].to_i)

    render plain: 'OK'
  end
end
