class AddColumnsToBuyers < ActiveRecord::Migration[5.2]
  def change
  	add_column :buyers, :last_name_kanji, :string
  	add_column :buyers, :first_name_kanji, :string
  	add_column :buyers, :last_name_kana, :string
  	add_column :buyers, :first_name_kana, :string
  	add_column :buyers, :zip_code, :string
  	add_column :buyers, :address, :string
  	add_column :buyers, :phone_number, :string
  end
end
