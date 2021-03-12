Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/actor" => "actors#index"
    get "/actor/:id" => "actors#show"
    post "/actor" => "actors#create"
    patch "/actor/:id" => "actors#update"
    delete "/actor/:id" => "actors#destroy"
  end

  namespace :api do
    get "/movie" => "movies#index"
    get "/movie/:id" => "movies#show"
    post "/movie" => "movies#create"
    patch "/movie/:id" => "movies#update"
    delete "/movie/:id" => "movies#destroy"
  end

  namespace :api do
    post "/users" => "users#create"
  end

end
