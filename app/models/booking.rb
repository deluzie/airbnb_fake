class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workshop
  belongs_to :review
end
