#!/bin/env ruby
# encoding: utf-8
ActiveAdmin.register Order, :as => "Pasutijumi" do
  menu :label => "Pasūtījumi", :parent => "Pasūtijumi"
end

