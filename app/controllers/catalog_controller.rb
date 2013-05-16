class CatalogController < ApplicationController
  before_filter :initialize_cart
  def index
    @page_title = "Product List"
    @products = Product.paginate(:page => params[:page],
                           :order => "products.id desc",
                           :include => [:product_type, :manufacturer], :per_page => 8)
  end

  def show
    @product = Product.find(params[:id]) rescue nil
    return render(:text => "Not found", :status => 404) unless @product
    @page_title = @product.name
  end

  def search
  end

  def latest
    @page_title = "Latest products"
    @products = Product.latest
  end
end
