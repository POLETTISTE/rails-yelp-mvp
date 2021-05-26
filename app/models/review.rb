class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
