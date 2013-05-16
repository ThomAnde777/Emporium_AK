module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Emporium"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  def add_product_link(text, product)
    link_to text, {:url => {:controller => "cart",
                            :action => "add", :id => product}, :remote => true},
            {:title => "Add to Cart",
             :class => "btn btn-large btn-primary",
             :href => url_for( :controller => "cart",
                               :action => "add", :id => product)}
  end
  def remove_product_link(text, product)
    link_to text, {:url => {:controller => "cart",
                            :action => "remove", :id => product}, :remote => true},
            {:title => "Remove product",
             :href => url_for( :controller => "cart",
                               :action => "remove", :id => product)}
  end
  def clear_cart_link(text = "Clear Cart")
    link_to text,
            {:url => { :controller => "cart",
                       :action => "clear" }, :remote => true},
            {:href => url_for(:controller => "cart",
                              :action => "clear")}
  end
end