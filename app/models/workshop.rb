class Workshop < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  validates :title, :address, :category, :description, :photos, presence: true
end
