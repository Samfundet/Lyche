class PagesController < ApplicationController
  def welcome
  end
  def menu
    @categories = Category.all
    
    # Column generation algorithm
    @column_names = [:left, :center, :right]
    category_weight = 1
    items_per_column = ((Category.count * category_weight + Dish.count).to_f / @column_names.length).ceil
    puts "Items per column: #{items_per_column}"
    
    @columns = {}
    current = @column_names.first
    
    @columns[current] ||= []
    
    col_counter = 0
    for category in @categories
      
      # Check if we're closing in on the end of a column
      if col_counter + 1 == items_per_column
        current = @column_names[@column_names.index(current) + 1] unless @columns.length == @column_names.length
        @columns[current] ||= []
        col_counter = 0
      end
      
      @columns[current] << category
      col_counter += category_weight
      
      for dish in category.dishes
        @columns[current] << dish
        col_counter += 1
        
        if col_counter == items_per_column
          current = @column_names[@column_names.index(current) + 1] unless @columns.length == @column_names.length
          @columns[current] ||= []
          col_counter = 0
          
          # Add a placeholder category for spacing if more dishes
          @columns[current] << Category.new unless dish == category.dishes.last
        end
      end
    end
    
  end
  def reservation
  end
  def information
  end
  def about
  end
  def contact
  end
end
