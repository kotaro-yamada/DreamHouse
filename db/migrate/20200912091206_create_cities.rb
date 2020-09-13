class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.integer :prefecture_id
      t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
      t.string :name

      t.timestamps
    end
  end
end
