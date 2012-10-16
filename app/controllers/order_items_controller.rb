class OrderItemsController < ApplicationController
  before_filter :lookup_order, :only => [:show, :create, :edit, :update, :destroy]
  
  def show
    @order_item = @order.order_items.find(params[:id])
  end

  def create
  	@product = Product.find_by_id(params[:product_id])
  	@order_item = @order.order_items.find_or_initialize_by_product_id(params[:product_id])

    @order_item.unit_price = @product.price
	
    unless @order_item.new_record?
      @order_item.quantity += 1 
    else
      @order_item.quantity = 1
    end

    respond_to do |format|
      if @order_item.save
         format.html { redirect_to @order, notice: 'Successfully create order item.' }
         format.js
      end
    end

  end

  def edit
  	@order_item = @order.order_items.find(params[:id])
  end

  def update
  	@order_item = @order.order_items.find(params[:id])

    respond_to do |format|
      if @order_item.update_attributes(params[:order_item])
        format.html {redirect_to @order, notice: 'Quantity was successfully updated'}
        format.json {head :no_content}
      else
        format.html {render action: "edit"}
        format.json {render json: @order_item.errors, status: :unprocessable_entity}
      end
    end

  end

  def destroy
    # render params[:id].inspect + " hello"
    # render @order.inspect.to_yaml
  	@order.order_items.destroy(params[:id])
  	redirect_to @order, :notice => "Successfully destroy order item."
  end
end
