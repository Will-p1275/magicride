class User < ApplicationRecord
  has_many :rides
  has_many :bookings

  has_many :requested_bookings, through: :rides, source: :bookings
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 7 }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
