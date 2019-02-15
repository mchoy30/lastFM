# frozen_string_literal: true

Rails.application.routes.draw do
  resources :album_informations # ,only: %i[index show]
  resources :songs
  resources :albums

  get 'search_results', to: 'search#results', as: 'search_results'
  get '/pages/:page' => 'pages#show'
  root to: 'albums#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
