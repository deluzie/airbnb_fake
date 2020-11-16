class Workshop < ApplicationRecord
  belongs_to :user
  validates :title, :address, :category, :description, presence: true
end
