Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'lists/index'
  get 'lists/new'
  get 'lists/create'
  get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy

  # root to: "lists#index"
  # resources :lists, except: [:edit, :update] do
  #   resources :bookmarks, only: [:new, :create]
  #   resources :reviews, only: :create
  # end
  # resources :bookmarks, only: :destroy
  # resources :reviews, only: :destroy


end
