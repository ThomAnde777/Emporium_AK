#!/bin/env ruby
# encoding: utf-8
ActiveAdmin.register OrderClosing do
  menu :label => "Pasūtījumu apstiprināšana", :parent => "Pasūtijumi", :url => "../admin/order"
end
