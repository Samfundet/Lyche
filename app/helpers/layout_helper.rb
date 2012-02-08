module LayoutHelper
  
  def title(s)
    content_for(:title) { s }
  end
  
  def pageclass
    "twocol"
  end
  
end