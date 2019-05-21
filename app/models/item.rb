class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :rentals
  belongs_to :user

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

