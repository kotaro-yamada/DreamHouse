class AddZipCodeToPurchaseOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :purchase_offers, :postcode, :string
    add_column :purchase_offers, :address, :string
    add_column :purchase_offers, :phone_number, :string
    add_column :purchase_offers, :first_name_kanji, :string
    add_column :purchase_offers, :last_name_kanji, :string
    add_column :purchase_offers, :first_name_kana, :string
    add_column :purchase_offers, :last_name_kana, :string
  end
end
