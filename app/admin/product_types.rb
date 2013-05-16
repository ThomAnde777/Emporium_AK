#!/bin/env ruby
# encoding: utf-8
ActiveAdmin.register ProductType, :as => "Produktu Tipi" do
  menu :label => "Produktu Tipi", :priority => 2

  index do
    column "PRODUKTU TIPS", :name
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name, :label => "PRODUKTU TIPS"
    end
    f.actions do
      f.submit
    end
  end

end
