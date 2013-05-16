#!/bin/env ruby
# encoding: utf-8
ActiveAdmin.register Product do

  menu :label => "Preces", :priority => 1

  filter :name, :label => 'NOSAUKUMS'
  filter :manufacturer, :label => 'RAŽOTĀJS'
  filter :product_type, :label => 'PRODUKTA TIPS'
  filter :price, :label => 'CENA'


  index do
    column "NOSAUKUMS", :name
    column "RAŽOTĀJS", :manufacturer
    column "PRODUKTA TIPS", :product_type
    column "ATTĒLS", :product_image do |product|
      img :src => "#{product.product_image}".split("public")[1] ,
          :width => 100
    end
    column "APRAKSTS", :description
    column "CENA", :sortable => :price do |product|
      String(product.price) + " LVL"
    end
    default_actions
  end


  show do
    attributes_table do
      row ("ID"){product.id}
      row ("NOSAUKUMS"){product.name}
      row ("RAŽOTĀJS"){product.manufacturer}
      row ("PRODUKTA TIPS"){product.product_type}
      row ("ATTĒLS"){img :src => "#{product.product_image}".split("public")[1], :width => 100, :height => 100}
      row ("APRAKSTS"){product.description}
      row ("CENA"){String(product.price) + " LVL"}
    end
  end


  form do |f|
    f.inputs "PRECES PARAMETRI" do
      f.input :name, :label => "NOSAUKUMS"
      f.input :manufacturer, :label => "RAŽOTĀJS"
      f.input :product_type, :label => "PRODUKTA TIPS"
      f.input :description, :label => "APRAKSTS"
      f.input :price, :label => "CENA"
      f.input :product_image, :label => "ATTĒLS", :as => :file

    end
    f.actions do
      f.submit
    end
  end

end
