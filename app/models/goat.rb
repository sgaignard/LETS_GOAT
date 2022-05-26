class Goat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :color, presence: true
  validates :gender, presence: true
  # validates :cuteness
  validates :price, presence: true
  validates :speed, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  def price_per_day
    (price * 100).round(0)
  end
end
