class Goat < ApplicationRecord
  has_many :bookings
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
end
