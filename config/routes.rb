Rails.application.routes.draw do
  resources :registrations
  resources :movie_infos
  root to: 'movie_infos#index'

  #get replaced by resources :movie_infos
  #get "movie_infos/:id" => "movie_infos#show", as:"movie"
  #get "movie_infos/new" => "movie_infos#new"
  #get "movie_infos/:id/edit" => "movie_infos#edit", as: "edit_movie"
  #patch "movie_infos/:id" => "movie_infos#update"
end
