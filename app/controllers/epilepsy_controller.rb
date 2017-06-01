class EpilepsyController < ApplicationController
  def index
  end

  def create
    LED.epilepsy(params[:size].to_i, params[:times].to_i, params[:interval].to_f / 1000)

    render json: {}
  end

  def destroy
    LED.reset(params[:id].to_i)

    render json: {}
  end
end
