class AddColumnsToSellers < ActiveRecord::Migration[5.2]
  def change
  	add_column :sellers, :last_name_kanji, :string
  	add_column :sellers, :first_name_kanji, :string
  	add_column :sellers, :last_name_kana, :string
  	add_column :sellers, :first_name_kana, :string
    add_column :sellers, :postcode, :integer
    add_column :sellers, :prefecture_code, :integer
    add_column :sellers, :address_city, :string
    add_column :sellers, :address_street, :string
    add_column :sellers, :address_building, :string
    add_column :sellers, :phone_number, :string
  end
end
