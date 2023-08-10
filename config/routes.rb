Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  #following code declares that GET/articles requests are mapped into 
  # "index" action of "ArticlesController"

  resources :articles do
    resources: comments
  end

end
