class AddPrefectureRefToHouses < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :prefecture, foreign_key: true
  end
end
