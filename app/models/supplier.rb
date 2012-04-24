class Supplier < Entity
  attr_accessible :name
  has_many :users, :as => :role
  has_and_belongs_to_many :ingredients
end