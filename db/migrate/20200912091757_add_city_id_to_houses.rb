class AddCityIdToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :city_id, :integer
  end
end
