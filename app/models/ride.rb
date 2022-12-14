class Ride < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: ['Magical Creatures', 'Spaceships', 'Unusual vehicles'] }
  validates :address, presence: true
  # validates :availability, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
