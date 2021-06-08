class Bed < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  categories = %w[king-size single double water hammock air bunk round car]
  validates :category, inclusion: { in: categories }
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :location, presence: true
  validates :description, length: { minimum: 10 }
end
