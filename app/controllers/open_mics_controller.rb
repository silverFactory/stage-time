class OpenMicsController < ApplicationController
  def new
    @open_mic = OpenMic.new
  end
  def create
    @open_mic = OpenMic.new(open_mic_params)
    if @open_mic.valid?
      @open_mic.save
      @host = Host.create(user_id: session[:user_id], open_mic_id: @open_mic.id)
      redirect_to open_mic_path(@open_mic)
    else
      render :new
    end
  end
  def index
    @open_mics = OpenMic.all
  end
  def show
    @open_mic = OpenMic.find(params[:id])
    @update = @open_mic.updates.last
  end
  def edit
    @open_mic = OpenMic.find(params[:id])
  end
  def update
    @open_mic = OpenMic.find(params[:id])
    @open_mic.update(open_mic_params)
    redirect_to open_mic_path(@open_mic)
  end

  private

  def open_mic_params
    params.require(:open_mic).permit(:name, :genre, :location, :day, :time, :stage_time,
       :sign_up_protocol, :cover, :drink_or_food_minimum)
  end
end
