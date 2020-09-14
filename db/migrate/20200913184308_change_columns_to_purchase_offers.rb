class ChangeColumnsToPurchaseOffers < ActiveRecord::Migration[5.2]
  def change
  	 change_column :purchase_offers, :buyer_id, :integer, null: false
  	 change_column :purchase_offers, :house_id, :integer, null: false
  	 change_column :purchase_offers, :price, :integer, null: false
  	 change_column :purchase_offers, :order_status, :integer, null: false, default: 0
  	 change_column :purchase_offers, :zip_code, :string, null: false
     change_column :purchase_offers, :address, :string, null: false
     change_column :purchase_offers, :phone_number, :string, null: false
     change_column :purchase_offers, :first_name_kanji, :string, null: false
     change_column :purchase_offers, :last_name_kanji, :string, null: false
     change_column :purchase_offers, :first_name_kana, :string, null: false
     change_column :purchase_offers, :last_name_kana, :string, null: false
  end
end
