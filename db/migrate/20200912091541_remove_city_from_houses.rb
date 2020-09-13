class RemoveCityFromHouses < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :city, :string
  end
end
