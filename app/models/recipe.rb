class Recipe < ActiveRecord::Base
  #has_many :products
  has_many :items, as: :storable, class_name: "Recipe::Item"
  has_many :steps, class_name: "Recipe::Step"
  
  attr_accessible :name
end