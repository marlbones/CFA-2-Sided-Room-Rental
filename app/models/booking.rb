class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :guest_number, presence: true, numericality: {greater_than_or_equal_to: 0}

  scope :approved, -> { where(approved:true, paid: false) }
  scope :pending, -> { where(approved:false) }
  scope :paid, -> {where(approved: true)}

end
