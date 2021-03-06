class Movie < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :year, numericality: { only_integer: true,  less_then: 2015}
  validates :plot, presence: true
  validates :director, length: { minimum: 100 }
  validates :english, confirmation: true

end
