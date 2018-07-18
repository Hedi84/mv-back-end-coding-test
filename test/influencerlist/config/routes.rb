Rails.application.routes.draw do
  root to: 'pages#home'
resources :influencers, only: [:index, :show]
resources :starred_influencers, only: [:create, :destroy]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
