class AddColumnsToBuyers < ActiveRecord::Migration[5.2]
  def change
  	add_column :buyers, :last_name_kanji, :string
  	add_column :buyers, :first_name_kanji, :string
  	add_column :buyers, :last_name_kana, :string
  	add_column :buyers, :first_name_kana, :string
  	add_column :buyers, :postcode, :integer
    add_column :buyers, :prefecture_code, :integer
    add_column :buyers, :address_city, :string
    add_column :buyers, :address_street, :string
    add_column :buyers, :address_building, :string
    add_column :buyers, :phone_number, :string
  end
end
