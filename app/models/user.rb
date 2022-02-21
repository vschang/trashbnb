class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :receptacles
  has_many :bookings
  #has_many :receptacles, through: :bookings
  has_many :booked_receptacles, through: :bookings, source: :receptacles

  validates :first_name, presence: true
  validates :last_name, presence: true
end
