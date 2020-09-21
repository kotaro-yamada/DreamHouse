class ChangeColumnsToBuyers < ActiveRecord::Migration[5.2]
  def change
  	change_column :buyers, :last_name_kanji, :string, null: false
  	change_column :buyers, :first_name_kanji, :string, null: false
  	change_column :buyers, :last_name_kana, :string, null: false
  	change_column :buyers, :first_name_kana, :string, null: false
  end
end
