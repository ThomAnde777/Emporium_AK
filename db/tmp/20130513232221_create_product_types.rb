class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.column :name, :string
    end
  end
end
