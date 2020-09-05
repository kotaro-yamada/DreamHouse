class AddColumnsToSellers < ActiveRecord::Migration[5.2]
  def change
  	add_column :sellers, :last_name_kanji, :string
  	add_column :sellers, :first_name_kanji, :string
  	add_column :sellers, :last_name_kana, :string
  	add_column :sellers, :first_name_kana, :string
  	add_column :sellers, :zip_code, :string
  	add_column :sellers, :address, :string
  	add_column :sellers, :phone_number, :string
  end
end
