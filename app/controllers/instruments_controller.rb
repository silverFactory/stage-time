class InstrumentsController < ApplicationController
  def new
    @instrument = Instrument.new
  end
  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.open_mic_id = params[:open_mic_id]
    @instrument.save
    redirect_to open_mic_instrument_path(params[:open_mic_id], @instrument)
  end
  def show
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
