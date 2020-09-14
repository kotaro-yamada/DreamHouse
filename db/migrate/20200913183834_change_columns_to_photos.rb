class ChangeColumnsToPhotos < ActiveRecord::Migration[5.2]
  def change
  	change_column :photos,:house_id, :integer, null: false
  	change_column :photos,:image_id, :integer, null: false
  end
end
