Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tops#top'
  resources :topics do
  	resources :responses, only: [:create]
  end
  resources :categories
  get "search" => "searches#search"
end
