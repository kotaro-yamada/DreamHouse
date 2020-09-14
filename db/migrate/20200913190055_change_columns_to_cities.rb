class ChangeColumnsToCities < ActiveRecord::Migration[5.2]
  def change
  	change_column :cities, :prefecture_id, :integer, null: false
  end
end
