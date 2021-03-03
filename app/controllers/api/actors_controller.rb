class Api::ActorsController < ApplicationController
  def index
    @actor = Actor.all
    render "index_actors.json.jb"
  end

  def show
    input = params[:id]
    @actor = Actor.find_by(id: input)
    render "show_actors.json.jb"
  end

  def create
    @actor = Actor.new(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      know_for: params[:know_for],
    )
    @actor.save
    render "show_actors.json.jb"
  end

  def update
    input = params[:id]
    @actor = Product.find_by(id: input)
    @actor.first_name = params[:first_name] || @actor.title
    @actor.last_name = params[:last_name] || @actor.year
    @actor.know_for = params[:know_for] || @actor.plot
    @actor.save
    render "show_actors.json.jb"
  end

  def destroy
    input = params[:id]
    actor = Actor.find_by(id: input)
    actor.destroy
    render json: { message: "This item succesfully destroyed" }
  end
end
