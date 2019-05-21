class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :rentals
  belongs_to :user
end
