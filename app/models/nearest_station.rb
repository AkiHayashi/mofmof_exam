class NearestStation < ApplicationRecord
  belongs_to :estate, inverse_of: :nearest_stations
  validates_presence_of :estate
end
