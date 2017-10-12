Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dogs#home"

  post "dogs" => "dogs#create"

  get "dogs/new" => "dogs#new"
end
