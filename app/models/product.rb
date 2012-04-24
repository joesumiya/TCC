class Product < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item, class_name: "AbstractItem"
  
  attr_accessible :name, :description, :recipe_id  
end

