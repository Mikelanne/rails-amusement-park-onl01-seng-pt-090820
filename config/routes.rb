Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  resources :users, only: [:new, :create, :show]
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get 'logout' => 'sessions#destroy'
  resources :attractions, only: [:index, :show]
end
