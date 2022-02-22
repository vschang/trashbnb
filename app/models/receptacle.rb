class Receptacle < ApplicationRecord
  has_one_attached :picture
  has_many :users, through: :bookings
  belongs_to :user
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :capacity, presence: true
  validates :address, presence: true
  validates :picture, presence: true
  validates :description, presence: true
end
