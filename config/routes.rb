Rails.application.routes.draw do
  resources :movie_infos
  root to: 'movie_infos#index'
  get "movie_infos/:id" => 'movie_infos#show', as:"movie"
  get "movie_infos/:id/edit" => "movie_infos#edit", as: "edit_movie"
end
