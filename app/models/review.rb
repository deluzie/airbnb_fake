class Review < ApplicationRecord
  belongs_to :workshop
  belongs_to :booking
end
