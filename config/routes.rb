Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/cookies" => "cookies#index"
  get "/cookies/:id" => "cookies#show"
  post "/cookies" => "cookies#create"
  patch "/cookies/:id" => "cookies#update"
  delete "/cookies/:id" => "cookies#destroy"

end
