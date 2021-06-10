class Bed < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  categories = %w[king-size single double water hammock mattress bunk round car]
  validates :category, inclusion: { in: categories }
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :location, presence: true
  validates :description, length: { minimum: 10 }

  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_location,
    against: [ :title, :location ],
    using: {
      # @@       partial words allowed
      tsearch: { prefix: true }
    }
end
