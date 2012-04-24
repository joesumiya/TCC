class Employee < Entity
  attr_accessible :name
  has_many :orders
end
