class Recipe::Item < AbstractItem
  self.table_name = "recipe_items"
  belongs_to :storable, polymorphic: true
  
  attr_accessible :storable_id, :quantity, :quantity_type_id
end



