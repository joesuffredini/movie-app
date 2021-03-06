class Api::MoviesController < ApplicationController
  def index
    @movie = Movie.all
    render "index_movies.json.jb"
  end

  def show
    input = params[:id]
    @movie = Movie.find_by(id: input)
    render "show_movies.json.jb"
  end

  def create
    @movie = Movie.new({
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
     })
    @movie.save
    render "show_movies.json.jb"
  end

  def update
    input = params[:id]
    @movie = Movie.find_by(id: input)
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    @movie.save
    render "show_movies.json.jb"
  end

  def destroy
    input = params[:id]
    movie = Movie.find_by(id: input)
    movie.destroy
    render json: { message: "This item succesfully destroyed" }
  end
end
