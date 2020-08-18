Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about', to: 'homes#about'

  resources :musics, onry: [:create, :index, :edit, :update, :destroy] 
  	#resource :favorites, only: [:create, :destroy]
  	#resources :music_comments, only: [:create, :destroy]

  resources :users, only: [:index, :show, :edit, :update]
    #resource :relationships, only: [:create, :destroy]
    #get :follows, on: :member
    #get :followers, on: :member

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
