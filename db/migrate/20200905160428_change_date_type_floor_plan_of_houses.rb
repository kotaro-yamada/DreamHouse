class ChangeDateTypeFloorPlanOfHouses < ActiveRecord::Migration[5.2]
  def change
  	change_column :houses, :floor_plan, :integer
  end
end
