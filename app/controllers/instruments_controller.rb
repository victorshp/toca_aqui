class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
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
    @instrument.user = current_user
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

# Modificar o def update inserindo um 'if' como o do create
  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    
    redirect_to instrument_path(@instrument.id)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.delete

    redirect_to instruments_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :inst_type, :price)
  end
end
