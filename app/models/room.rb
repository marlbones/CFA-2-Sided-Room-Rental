class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :bathrooms, length: { minimum: 1 }

  mount_uploaders :images, RoomUploader
  serialize :images, JSON
end
