Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'applications#hello'
  # get '/login' => 'sessions#new'
  # get '/login' => 'sessions#create'
  # post 'logout' => 'sessions@destroy'
  # get '/secret' => 'secret#show'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
