class OpenMicsController < ApplicationController
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def open_mic_params
    params.require(:open_mic).permit(:name, :genre, :location, :day, :time, :stage_time,
       :sign_up_protocol, :cover, :drink_or_food_minimum)
  end
end
