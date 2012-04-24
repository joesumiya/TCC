class StockItemsController < ApplicationController
  before_filter :get_stock
  
  def edit
    @item = Stock::Item.find(params[:id])
  end
  
  def update
    @item = Stock::Item.find(params[:id])
    
    respond_to do |format|
      if @item.update_attributes(params[:stock_item])
        format.html { redirect_to stock_path(@stock) }
      else
        format.html { render action: :edit }
      end
    end
  end
  
  def destroy
    @item = Stock::Item.find(params[:stock_id])
    @item.destroy
    
    redirect_to stock_path(@stock)
  end
  
  private
  def get_stock
    @stock = Stock.find(params[:stock_id])
  end
  
end
