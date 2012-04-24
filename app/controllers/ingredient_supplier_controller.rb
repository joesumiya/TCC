class IngredientSupplierController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_supplier
  
  #add ingredient to supplier
  def create
    @ingredient = Ingredient.find(params[:id])
    
    @supplier.ingredients << @ingredient
    redirect_to supplier_path(@supplier)
  end
  
  def destroy
    @ingredient = Ingredient.find(params[:id])
    @supplier.ingredients.delete(@ingredient)
    
    redirect_to supplier_path(@supplier)
  end
  
  private
  def get_supplier
    @supplier = Supplier.find(params[:supplier_id])
  end
end
