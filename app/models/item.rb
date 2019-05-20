class Item < ApplicationRecord
  has_many :rentals
  belongs_to :user
end
