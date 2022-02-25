class Receptacle < ApplicationRecord
  has_one_attached :picture
  has_many :users, through: :bookings
  belongs_to :user
  validates :name, :picture, presence: true
  validates :price_per_day, presence: true
  validates :capacity, presence: true
  validates :address, presence: true
  validates :description, presence: true
  acts_as_taggable_on :tags

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: %i[name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
