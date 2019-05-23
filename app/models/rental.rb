class Rental < ApplicationRecord
  STATUS = ['pending', 'confirmed', 'cancelled']

  belongs_to :user
  belongs_to :item

  validates :status, presence: true, inclusion: { in: STATUS }
end
