# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/results'
  resources :album_informations # ,only: %i[index show]
  resources :songs
  resources :albums

  get '/pages/:page' => 'pages#show'
  root to: 'albums#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
