class AddDaysToBeWateredToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :days_to_be_watered, :integer
  end
end
