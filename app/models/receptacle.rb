class Receptacle < ApplicationRecord
  has_many :users, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
