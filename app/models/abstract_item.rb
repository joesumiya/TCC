class AbstractItem < ActiveRecord::Base
  self.abstract_class = true
  
  def quantity_type
    return case self.quantity_type_id
      when 1 then "Kg(s)"
      when 2 then "gr(s)"
      when 3 then "unidade(s)"
      when 4 then "Lt(s)"
      when 5 then "ml(s)"
    end
  end
  
  def human_quantity
    "#{self.quantity} #{self.quantity_type}"
  end
end