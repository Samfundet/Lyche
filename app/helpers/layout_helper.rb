module LayoutHelper
  
  def title(s)
    content_for(:title) { s }
  end
  
  def menu_link(text, url, options={})
    options.merge! :class => 'active' if current_page?(url)
    
    puts options.inspect
    
    link_to(text, url, options)
  end
  
  def pageclass(cls=nil)
    content_for(:pageclass) { cls } unless cls.nil?
    
    cls = content_for(:pageclass)
    cls.present? ? cls : "normal"
  end
  
end