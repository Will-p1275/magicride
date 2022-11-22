class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  validates :starting_date, presence: true
  validates :end_date, presence: true
  # validates :total_price, presence: true
  validates :status, inclusion: { in: %w[pending accepted refused] }
end
