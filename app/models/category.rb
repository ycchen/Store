class Category < ActiveRecord::Base
  attr_accessible :name

  extend FriendlyId
  friendly_id :name
  
  has_many :product_categorys
  has_many :products, :through => :product_categorys

  validates_presence_of :name
end
