class User < ApplicationRecord
  has_many :rides, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 7 }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18 }
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
