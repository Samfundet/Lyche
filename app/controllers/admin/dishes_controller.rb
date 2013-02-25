class Admin::DishesController < ApplicationController
  respond_to :html, :json
  
  def show
    @dish = Dish.find(params[:id])
    respond_with @dish
  end
  def new
    
  end
  def create
    
  end
  def edit
    @dish = Dish.find(params[:id])
    respond_with @dish
  end
  def update
    @dish = Dish.find(params[:id])
    
    puts "BEFORE: #{@dish.position}"
    
    @dish.attributes = params[:dish]
    @dish.save
    
    puts "AFTER: #{@dish.position}"
    
    respond_with @dish
  end
  def destroy
    
  end
end