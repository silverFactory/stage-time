class OpenMicsController < ApplicationController
  def new
    @open_mic = OpenMic.new
  end
  def create
    @open_mic = OpenMic.new(open_mic_params)
    @open_mic.save
    #add host to mic association
    @host = Host.create(user_id: session[:user_id], open_mic_id: @open_mic.id)
  #  byebug

    redirect_to open_mic_path(@open_mic)
  end
  def index
    @open_mics = OpenMic.all
  end
  def show
    @open_mic = OpenMic.find(params[:id])
    @update = @open_mic.updates.last
    @hosts = []
    @open_mic.hosts.each do |host|
      @hosts << User.find(host.id).stage_name
    end
    @missed_connection = Support.new
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
