class Product < ActiveRecord::Base
  attr_accessible :activity, :description, :image_link, :price, :title, :category_ids
  
  validates_presence_of :title, :description
  validates_numericality_of :price, :greater_than => 0
  validates_uniqueness_of :title

  has_many :product_categorys
  has_many :categories, :through => :product_categorys


	def category_ids=(params)
		self.categories = []
		params.each do |id|
		  unless id.to_s.empty?
		    category = Category.find(id)
		    categories << category
		  end
		  save
		end
	end

  
end
