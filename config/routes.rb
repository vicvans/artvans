Rails.application.routes.draw do
  root to: 'pages#index'
  get '/about' => 'pages#about'
  get 'pages/:id' => 'pages#about'

  #get 'gallery/:id' => 'gallery#show'
end
