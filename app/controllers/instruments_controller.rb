class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_instrument, only: [ :show, :edit, :update, :destroy]
  def index
    @instruments = policy_scope(Instrument)
  end

  def show
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def edit
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user

    authorize @instrument
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

# Modificar o def update inserindo um 'if' como o do create
  def update
    @instrument.update(instrument_params)

    redirect_to instrument_path(@instrument.id)
  end

  def destroy
    @instrument.delete

    redirect_to instruments_path
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
    authorize @instrument
  end

  def instrument_params
    params.require(:instrument).permit(:name, :inst_type, :price, :photo)
  end
end
