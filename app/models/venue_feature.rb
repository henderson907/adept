class VenueFeature < ApplicationRecord
  belongs_to :venue
  belongs_to :accessibility_features
end
