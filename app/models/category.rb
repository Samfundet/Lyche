class Category < ActiveRecord::Base
  has_many :dishes, order: 'position ASC'
  
  def to_s
    title
  end
end
