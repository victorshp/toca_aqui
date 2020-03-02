class OrdersController < ApplicationController
  skip_after_action :verify_authorized

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.date = DateTime.now

    @order.instrument = Instrument.find(params[:instrument_id])
    @order.user = current_user
    @order.save
    # Change the owner of the instrument changes.
    purchased_instrument =  Instrument.find(params[:instrument_id])
    purchased_instrument.user_id = current_user.id
    purchased_instrument.save
    redirect_to profile_index_path
  end

  def edit
    @order = Order.task.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.update(order_params)
  end

  private

  def order_params
      params.require(:order).permit(:instrument, :user)
  end
end
