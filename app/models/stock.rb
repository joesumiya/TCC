class Stock < ActiveRecord::Base
  has_many :items, class_name: "Stock::Item"
  attr_accessible :name
  
  def create_item_for(product)
    item = Stock::Item.new
    item.storable = product
    item.quantity = 0
    item.quantity_type_id = 1
    item.stock = self
    item.save
  end
end