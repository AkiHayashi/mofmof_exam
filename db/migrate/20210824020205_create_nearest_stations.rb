class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.string :route
      t.string :station
      t.float :walk_minutes

      t.timestamps
    end
  end
end
