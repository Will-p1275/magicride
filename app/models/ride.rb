class Ride < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w[vehicle pokemon starwars] }
  validates :address, presence: true
  validates :availability, presence: true, default: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
end