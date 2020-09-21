class CreateVisitOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_offers do |t|
      t.integer :house_id
      t.integer :buyer_id
      t.integer :amount
      t.integer :order_status
      t.string :last_name_kanji
      t.string :first_name_kanji
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postcode
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
