class Goat < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user
  has_one_attached :photo
end
