class Ride < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: ['Magical Creatures', 'Starship', 'Unusual vehicles'] }
  validates :address, presence: true
  validates :availability, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
end
