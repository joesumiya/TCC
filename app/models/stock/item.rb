class Stock::Item < AbstractItem
  self.table_name = "stock_items"
  
  belongs_to :storable, polymorphic: true
  belongs_to :stock
  
  attr_accessible :quantity, :quantity_type_id
end
