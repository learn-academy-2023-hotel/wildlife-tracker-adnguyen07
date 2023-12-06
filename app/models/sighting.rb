class Sighting < ApplicationRecord
    belongs_to :wildlife
    validates :latitude, :longitude, :date, presence: true
end
