class ChangeColumnsToVisitOffers < ActiveRecord::Migration[5.2]
  def change
  	 change_column :visit_offers, :house_id, :integer, null: false
  	 change_column :visit_offers, :buyer_id, :integer, null: false
  	 change_column :visit_offers, :order_status, :integer, null: false, default: 0
  	 change_column :visit_offers, :first_name_kanji, :string, null: false
     change_column :visit_offers, :last_name_kanji, :string, null: false
     change_column :visit_offers, :first_name_kana, :string, null: false
     change_column :visit_offers, :last_name_kana, :string, null: false
  	 change_column :visit_offers, :postcode, :string, null: false
     change_column :visit_offers, :address, :string, null: false
     change_column :visit_offers, :phone_number, :string, null: false
  end
end
