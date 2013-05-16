#!/bin/env ruby
# encoding: utf-8
ActiveAdmin.register AdminUser do
  menu :label => "Administratori", :priority => 15

  index do
    column "E-pasts", :email
    column "Pašreiz pieslēdzies", :current_sign_in_at
    column "Pēdējo reizi pieslēdzās", :last_sign_in_at
    column "Pieslēgšanās skaits", :sign_in_count
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Administratora detaļas" do
      f.input :email, :label => "E-pasts"
      f.input :password, :label => "Parole"
      f.input :password_confirmation, :label => "Parole atkārtoti"
    end
    f.actions
  end
end                                   
