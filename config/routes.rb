Rails.application.routes.draw do 
  get 'about' => 'movies#about'
  get 'privacy' => 'movies#privacy'
  get '/films', to: redirect('movies')
  resources :films, as: :movies, controller: :movies
	root 'movies#index'

end