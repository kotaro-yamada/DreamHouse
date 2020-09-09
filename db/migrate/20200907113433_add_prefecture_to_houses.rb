class AddPrefectureToHouses < ActiveRecord::Migration[5.2]
  def change
  	add_column :houses, :prefecture, :string
  	add_column :houses, :city, :string
  end
end
