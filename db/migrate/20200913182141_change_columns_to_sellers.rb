class ChangeColumnsToSellers < ActiveRecord::Migration[5.2]
  def change
  	change_column :sellers, :last_name_kanji, :string, null: false
  	change_column :sellers, :first_name_kanji, :string, null: false
  	change_column :sellers, :last_name_kana, :string, null: false
  	change_column :sellers, :first_name_kana, :string, null: false
  	change_column :sellers, :zip_code, :string, null: false
  	change_column :sellers, :address, :string, null: false
  	change_column :sellers, :phone_number, :string, null: false
  end
end
