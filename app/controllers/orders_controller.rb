class OrdersController < ApplicationController
  def new
    @order = Order.save
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to user_path
    else
      render :new
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
