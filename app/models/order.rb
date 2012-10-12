class Order < ActiveRecord::Base
  attr_accessible :address_id, :total_price, :user_id, :status
  has_many :order_items, :dependent => :destroy
  belongs_to :user

  def total
  	order_items.collect(&:price).sum
  end
end
