# This migration comes from import_products (originally 20101123205019)
class CreateProductImports < ActiveRecord::Migration
  def self.up

    create_table :spree_product_imports do |t|
      t.string :data_file_file_name
      t.string :data_file_content_type
      t.integer :data_file_file_size
      t.datetime :data_file_updated_at
      t.timestamps
    end
  end

  def self.down
    if table_exists?(:spree_product_imports)
    	drop_table :spree_product_imports
  	end
  end
end
