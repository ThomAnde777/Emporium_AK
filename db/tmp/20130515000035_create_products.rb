class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |table|
      table.column :name, :string, :limit => 255, :null => false
      table.column :manufacturer_id, :integer, :null => false
      table.column :product_type_id, :integer, :null => false
      table.column :description, :text
      table.column :price, :float
    end

    say_with_time 'Adding foreign keys' do

      execute 'CREATE TRIGGER fk_products_manufacturers BEFORE DELETE ON manufacturers ' +
                  'FOR EACH ROW ' +
                  'BEGIN ' +
                  'DELETE FROM products WHERE manufacturer_id = OLD.id; ' +
                  'END'
      execute 'CREATE TRIGGER fk_products_product_types BEFORE DELETE ON product_types ' +
                  'FOR EACH ROW ' +
                  'BEGIN ' +
                  'DELETE FROM products WHERE product_type_id = OLD.id; ' +
                  'END'
    end
  end
  def self.down
    drop_table :product_types_products
    drop_table :products
  end
end
