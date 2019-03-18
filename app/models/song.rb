class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, if: :released, numericality: {less_than_or_equal_to: Date.today.year}
end
