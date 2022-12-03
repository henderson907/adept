class SavedVenue < ApplicationRecord
  has_many :users
  has_many :venues
end
