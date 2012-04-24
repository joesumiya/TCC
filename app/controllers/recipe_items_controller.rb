class RecipeItemsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_recipe
  
  
  def new
    @item = Recipe::Item.new
  end
  
  def create
    @item = Recipe::Item.new(params[:recipe_item])
    @item.quantity_type_id = params[:quantity_type_id]
    
    respond_to do |format|
      if @item.save
        @recipe.items << @item
        format.html { redirect_to recipe_path(@recipe) }
      else
        format.html { render action: :new  }
      end
    end
  end
  
  def edit
    @item = Recipe::Item.find(params[:id])
  end
  
  def update
    @item = Recipe::Item.find(params[:id])
    
    respond_to do |format|
      if @item.update_attributes(params[:recipe_item])
        format.html { redirect_to recipe_path(@recipe) }
      else
        format.html { render action: :edit }
      end
    end
  end
  
  def destroy
    Recipe::Item.find(params[:id]).destroy
    
    redirect_to recipe_path(@recipe)
  end
  
  private
  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
