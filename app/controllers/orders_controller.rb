class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.date = Date.today
    @order.instrument = params[:instrument_id]
    @order.user = current_user
    if @order.save
      redirect_to user_path
    else
      @instrument = Instrument.find(params[:instrument_id])
      render 'instruments/show'
    end
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
end
