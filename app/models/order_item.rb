class OrderItem < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity, :unit_price
  belongs_to :order
  belongs_to :product

  def price
  	quantity * unit_price
  end

  def total
  	order.order_item.collect(&:price).sum
  end
    
end
