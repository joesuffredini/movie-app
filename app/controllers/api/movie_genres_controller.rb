class Api::MovieGenresController < ApplicationController
  def create
    @moviegenre = MovieGenre.new({
      genre_id: params[:genre_id],  
      movie_id: params[:movie_id],  
     })
     if @moviegenre.save
      render "show_moviegenre.json.jb"
    else
      render json: { errors: @moviegenre.errors.full_messages }, status:406
    end
  
  end


end
