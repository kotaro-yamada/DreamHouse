class CreatePreperredDates < ActiveRecord::Migration[5.2]
  def change
    create_table :preperred_dates do |t|
      t.integer :visit_offer_id, null: false
      t.datetime :first_choice
      t.datetime :second_choice
      t.datetime :third_choice

      t.timestamps
    end
  end
end
