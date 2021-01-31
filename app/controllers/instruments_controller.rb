class InstrumentsController < ApplicationController
  def new
    @instrument = Instrument.new
  end
  def index
    @open_mic = OpenMic.find(params[:open_mic_id])
    @instruments = @open_mic.instruments
  end
  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.open_mic_id = params[:open_mic_id]
    if @instrument.valid?
      @instrument.save
      redirect_to open_mic_instrument_path(params[:open_mic_id], @instrument)
    else
      render :new
    end
  end
  def show
    @instrument = Instrument.find(params[:id])
  end
  def edit
    @instrument = Instrument.find(params[:id])
  end
  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    redirect_to open_mic_instrument_path(params[:open_mic_id], @instrument)
  end
  def destroy
  end

  private

  def instrument_params
    params.require(:instrument).permit(:open_mic_id, :name, :description, :status)
  end
end
