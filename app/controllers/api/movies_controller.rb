class Api::MoviesController < ApplicationController
  def find_movies
    @movie = Movie.all
    render "get_movies.json.jb"
  end

  def find_a_movie
    @movie = Movie.last
    render "get_a_movie.json.jb"
  end
end
