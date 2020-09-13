class RemovePrefectureFromHouses < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :prefecture, :string
  end
end
