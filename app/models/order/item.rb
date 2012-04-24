class Order::Item < AbstractItem
    belongs_to :storable, polymorphic: true
end
  