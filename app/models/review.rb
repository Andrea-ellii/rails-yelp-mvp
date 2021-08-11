class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: { in: (0..5) }
  validates :content, presence: true
end

# content cannot be blank (FAILED - 2)
#   rating cannot be blank (FAILED - 3)
#   parent restaurant cannot be nil
#   rating should be an integer (FAILED - 4)
#   rating should be a number between 0 and 5 (FAILED - 5)
