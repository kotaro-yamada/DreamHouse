class AddSlugToPrefecture < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :slug, :string
  end
end
