Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'users/registrations'}
  get '/about', to: 'pages#about'
  resources :cities, only: [:show, :index] do
    resources :events, only: [:new, :create]
    resources :city_guides, only: [:index]
  end
  resources :users, only: [:show]
  resources :events, only: [:show, :edit, :destroy] do
    resources :attendees, only: [:create]
  end
  resources :attendees, only: [:destroy]

  get "api/cities/:query", to: "api/v1/cities#search", defaults: { format: 'json' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
