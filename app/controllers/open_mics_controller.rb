class OpenMicsController < ApplicationController
  def new
    @open_mic = OpenMic.new
  end
  def create
    @open_mic = OpenMic.new(open_mic_params)
    #need to add host to mic association
    @open_mic.save
    redirect_to open_mic_path(@open_mic)
  end
  def index
  end
  def show
    @open_mic = OpenMic.find(params[:id])
  end
  def edit
    @open_mic = OpenMic.find(params[:id])
  end
  def update
    @open_mic = OpenMic.find(params[:id])
    @open_mic.update(open_mic_params)
    redirect_to open_mic_path(@open_mic)
  end
  def destroy
  end

  private

  def open_mic_params
    params.require(:open_mic).permit(:name, :genre, :location, :day, :time, :stage_time,
       :sign_up_protocol, :cover, :drink_or_food_minimum)
  end
end
