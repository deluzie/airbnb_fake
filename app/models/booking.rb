class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workshop
  has_many :reviews
end
