#!/bin/env ruby
# encoding: utf-8
ActiveAdmin.register Manufacturer, :as => "Razotaji" do
  menu :label => "Ražotāji", :priority => 3

  index do
    column "NOSAUKUMS", :name
    default_actions
  end



  form do |f|
    f.inputs do
      f.input :name, :label => "NOSAUKUMS"
    end
    f.actions do
      f.submit
    end
  end

end
