class Recipe::Step < ActiveRecord::Base
  self.table_name = "recipe_steps"
  belongs_to :recipe
  
  attr_accessible :content
end
