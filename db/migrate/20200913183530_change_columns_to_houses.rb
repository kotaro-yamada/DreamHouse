class ChangeColumnsToHouses < ActiveRecord::Migration[5.2]
  def change
  	change_column :houses, :price, :integer, null: false
  	change_column :houses, :zip_code, :string, null: false
  	change_column :houses, :address, :string, null: false
  	change_column :houses, :category, :integer, null: false, default: 0
  	change_column :houses, :sales_status, :integer, null: false, default: 0
  	change_column :houses, :seller_id, :integer, null: false
  	change_column :houses, :city_id, :integer, null: false
  	change_column :houses, :floor_plan, :integer, default: 0
  end
end
