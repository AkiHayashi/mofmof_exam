class Estate < ApplicationRecord
  validates :name, :rent, :address, :age, :content, presence: true
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank
end
