class Booking < ApplicationRecord
  belongs_to :bed
  belongs_to :user

  validates :date, presence: true
  validates :duration, presence: true
end
