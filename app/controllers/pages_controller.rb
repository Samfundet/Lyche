class PagesController < ApplicationController

  def welcome
  end

  def menu
    @categories = Category.all
    
    generate_menu
  end

  def reservation
  end

  def information
  end

  def about
  end

  def contact
    @message = Message.new # for the contact email
  end
  
  def admin
  end
  
  private 
    
    # TODO: Move to a better suited place? Maybe not?
    def generate_menu
      # Column generation algorithm
      @column_names = [:left, :center, :right]

      # The category weight used to be 2, but this worked poorly when the number
      # of categories and dishes changed. Setting it to 0 currently works,
      # but I'm leaving the variable in case a later change requires weighted
      # categories again.
      #   -- andereld
      category_weight = 0

      items_per_column = ((Category.count * category_weight + Dish.count).to_f / @column_names.length).ceil

      logger.debug "[Menu-generation] Items per column: #{items_per_column}"

      @columns = {}
      current = @column_names.first

      @columns[current] ||= []

      col_counter = 0
      for category in @categories

        # Check if we're closing in on the end of a column
        if col_counter + 1 == items_per_column
          current = next_col(current)
          @columns[current] ||= []
          col_counter = 0
        end

        # Add current category
        @columns[current] << category
        col_counter += category_weight

        # Add dishes
        for dish in category.dishes
          @columns[current] << dish
          col_counter += 1

          # If we're at maximum dishes per column, jump to next column
          if col_counter == items_per_column
            current = next_col(current)
            @columns[current] ||= []
            col_counter = 0

            # Add a placeholder category for spacing if more dishes
            @columns[current] << Category.new unless dish == category.dishes.last
          end
        end
      end
    end
  
    def next_col(current)
      @column_names[@column_names.index(current) + 1] unless @columns.length == @column_names.length
    end
  
end
