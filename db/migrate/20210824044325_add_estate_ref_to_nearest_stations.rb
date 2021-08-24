class AddEstateRefToNearestStations < ActiveRecord::Migration[5.2]
  def change
    add_reference :nearest_stations, :estate, foreign_key: true
  end
end
