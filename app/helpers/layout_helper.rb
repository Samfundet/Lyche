module LayoutHelper
  
  def title(s=nil)
    content_for(:title) { s } unless s.nil?
    
    content_for(:title)
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
  
  def sidebar_box(options={}, &block)
    background = image_path(options[:background]) if options[:background]
    classes = (options[:class] || "").split(" ")
    classes << "sidebar-box"
    classes << "align-right" if options[:right]
    content = content_tag('div', capture(&block), class: "inner")
    content_tag('div', content, class: classes.join(" "),
                                style: "background-image: url(#{background})",
                                "data-href" => options[:url])
  end
  
end
