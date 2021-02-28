Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/actor" => "actors#find_actor"
  end

  namespace :api do
    get "/movie" => "movies#movie_where"
    get "/actorq" => "actors#get_actor_query"
    get "/actorb/:first" => "actors#get_actor_block"
    post "actorp" => "actors#get_actor_block"
  end
end
