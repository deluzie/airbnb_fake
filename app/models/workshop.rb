class Workshop < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
  validates :title, :address, :category, :description, :photos, presence: true
end
