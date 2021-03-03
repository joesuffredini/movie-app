Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/actor" => "actors#find_actor"
    get "/actorq" => "actors#get_actor_query"
    get "/actorb/:first" => "actors#get_actor_block"
    post "actorp" => "actors#get_actor_post"
  end

  namespace :api do
    get "/movie" => "movies#index"
    get "/movie/:id" => "movies#show"
    post "/movie" => "movies#create"
    patch "/movie/:id" => "movies#update"
    delete "/movie/:id" => "movies#destroy"

    get "/actor" => "actors#index"
    get "/actor/:id" => "actors#show"
    post "/actor" => "actors#create"
    patch "/actor/:id" => "actors#update"
    delete "/actor/:id" => "actors#destroy"
  end
end
