class Product < ActiveRecord::Base
  belongs_to :product_type

  has_many :cart_items
  has_many :carts, :through => :cart_items

  belongs_to :manufacturer
  file_column :product_image
  validates_length_of :name, :in => 1..255
  validates :manufacturer_id, :presence => true
  validates :product_type_id, :presence => true
  validates_numericality_of :price
# roughly speaking sets list of model protected attributes to []
# making all attributes accessible while mass-assignment
  attr_protected

  def self.latest
    find :all, :limit => 8, :order => "products.id desc", :include => [:product_types, :manufacturer]
  end
end
