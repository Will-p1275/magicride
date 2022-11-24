class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  validates :starting_date, presence: true
  validates :end_date, presence: true

  scope :pending, -> { where(status: "pending") }
  scope :accepted, -> { where(status: "accepted") }
  scope :refused, -> { where(status: "refused") }

  # validates :total_price, presence: true
  # validates :status, inclusion: { in: %w[pending accepted refused] }
end
