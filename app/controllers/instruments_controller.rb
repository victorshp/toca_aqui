class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def create
    @instrument = Instrument.new(instrument_params)
    if instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

# Modificar o def update inserindo um 'if' como o do create
  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)

    redirect_to instrument_path(@instrument)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy

    redirect_to instrument_path
  end

  private

  def intrument_params
    params.require(:instrument).permit(:name, :inst_type, :price)
  end
end
