class Api::ActorsController < ApplicationController
  def find_actor
    @actor = Actor.find_by(id: 6)

    render "find_actor.json.jb"
  end

  def get_actor_query
    input = params["input"]
    @response = Actor.find_by(first_name: input)
    render "find_actor.json.jb"
  end

  def get_actor_block
    input = params[:first]
    @response = Actor.find_by(first_name: input)
    render "find_actor.json.jb"
  end

  # def get_movie_query
  #   input = params[:name]
  #   @response = Actor.find_by(first_name: input)
  #   render "find_actor.json.jb"
  # end
end
