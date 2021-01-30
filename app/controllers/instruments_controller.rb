class InstrumentsController < ApplicationController
  def new
    @instrument = Instrument.new
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
  end
  def update
  end
  def destroy
  end

  private

  def instrument_params
    params.require(:instrument).permit(:open_mic_id, :name, :description, :status)
  end
end
