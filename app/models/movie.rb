class Movie < ApplicationRecord
  # validates :title, length: { minimum: 1 }
  # validates :year, numericality: { only_integer: true,  less_then: 2015}
  # validates :plot, presence: true
  # validates :director, length: { minimum: 100 }
  # validates :english, confirmation: true
  has_many  :actors
  has_many  :movie_genres
  has_many  :genres, through: :movie_genres


def genre_names
  movie_genres.map do |movie_genre|
    movie_genre.genre[:name]
  end
end


end
