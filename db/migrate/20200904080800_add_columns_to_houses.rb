class AddColumnsToHouses < ActiveRecord::Migration[5.2]
  def change
  	add_column :houses, :name, :string
  	add_column :houses, :price, :string
  	add_column :houses, :postcode, :string
  	add_column :houses, :address, :string
  	add_column :houses, :category, :string
  	add_column :houses, :floor_plan, :string
  	add_column :houses, :old, :integer
  	add_column :houses, :land_area, :string
  	add_column :houses, :building_area, :string
  	add_column :houses, :sales_status, :integer
    add_column :houses, :image_id, :string
  end
end
