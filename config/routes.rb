Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :cities, only: [:show, :index] do
    resources :events, only: [:new, :create]
  end
  resources :users, only: [:show]
  resources :events, only: [:show, :edit, :destroy] do
    resources :attendees, only: [:create]
  end
  resources :attendees, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
