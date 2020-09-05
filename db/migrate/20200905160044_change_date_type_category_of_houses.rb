class ChangeDateTypeCategoryOfHouses < ActiveRecord::Migration[5.2]
  def change
  	change_column :houses, :category, :integer
  end
end
