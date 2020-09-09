class CreatePurchaseOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_offers do |t|
      t.integer :buyer_id
      t.integer :house_id
      t.integer :price
      t.integer :order_status

      t.timestamps
    end
  end
end
