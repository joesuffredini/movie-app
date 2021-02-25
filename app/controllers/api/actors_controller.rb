class Api::ActorsController < ApplicationController
  def find_actor
    @actor = Actor.find_by(id: 6)

    render "find_actor.json.jb"
  end
end
