class OrdersController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @orders = Order.find_all_by_user_id(current_user.id)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to products_path, :notice => "Successfully destroyed order."
  end
end
