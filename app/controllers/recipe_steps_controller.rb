class RecipeStepsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_recipe
  
  def new
    @step = Recipe::Step.new
  end
  
  def create
    @step = Recipe::Step.new(params[:recipe_step])
    
    respond_to do |format|
      if @step.save
        @recipe.steps << @step
        format.html { redirect_to recipe_path(@recipe) }
      else
        format.html { render action: :new }
      end
    end
  end
  
  def edit
    @step = Recipe::Step.find(params[:id])
  end
  
  def update
    @step = Recipe::Step.find(params[:id])
    
    respond_to do |format|
      if @step.update_attributes(params[:recipe_step])
        format.html { redirect_to recipe_path(@recipe) }
      else
        format.html { render action: :edit }
      end
    end
  end
  
  def destroy
    Recipe::Step.find(params[:id]).destroy
    
    redirect_to recipe_path(@recipe)
  end

  
  private
  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
