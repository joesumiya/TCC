class Ingredient < ActiveRecord::Base
  belongs_to :item, class_name: "AbstractItem"
  has_and_belongs_to_many :suppliers
  attr_accessible :name
end
