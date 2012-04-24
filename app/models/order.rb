class Order < ActiveRecord::Base
  belongs_to :salable, :polymorphic => true
end