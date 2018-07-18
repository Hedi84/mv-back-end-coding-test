Rails.application.routes.draw do
  get 'starred_influencers/new'
  get 'starred_influencers/create'
  get 'starred_influencers/show'
  get 'starred_influencers/index'
  get 'influencers/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
