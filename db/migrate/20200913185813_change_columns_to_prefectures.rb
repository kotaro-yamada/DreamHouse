class ChangeColumnsToPrefectures < ActiveRecord::Migration[5.2]
  def change
  	change_column :prefectures, :name, :string, null: false
  end
end
