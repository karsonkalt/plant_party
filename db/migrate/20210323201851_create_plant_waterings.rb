class CreatePlantWaterings < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_waterings do |t|
      t.belongs_to :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
