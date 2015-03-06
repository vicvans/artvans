Rails.application.routes.draw do
  root 'pages#index', as: 'root'
  get '/home', to: redirect('/')
  # get '/about' => 'pages#about', as: 'about'
  # get 'pages/:id' => 'pages#about'
  #get 'gallery/:id' => 'gallery#show'

  scope path: '/', controller: :pages do
  	get 'about' => :about
  	get 'test' => :test
  	get 'about/:id' => :about
  end
  get '/gallery' => 'galleries#home', as: 'gallery_home'
end
