class Manufacturer < ActiveRecord::Base
  has_many :products

  validates_length_of :name, :in => 2..255
  validates_uniqueness_of :name
  attr_accessible :name
end
