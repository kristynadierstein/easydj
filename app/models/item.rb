class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :rentals
  belongs_to :user

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :name, presence: true, length: { maximum: 100 }
  validates_presence_of [:price, :condition, :start_date, :end_date, :photo, :location, :deposit]
  include PgSearch
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
