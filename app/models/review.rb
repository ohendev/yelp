class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, format: { with: /\A[0-5]\z/,
    message: "must be digit. must be between 0 and 5" }
end
