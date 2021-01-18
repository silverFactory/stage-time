class InstrumentsController < ApplicationController
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

  def instrument_params
    params.require(:instrument).permit(:open_mic_id, :type, :description, :status)
  end
end
