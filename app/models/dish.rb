class Dish < ActiveRecord::Base
  belongs_to :category
  
  acts_as_list scope: :category_id
  
  def to_s
    title
  end
end
