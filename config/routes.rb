Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tv_shows#index'

  resources :channels, only: :index
  resources :tv_shows, only: %i[show index]
  resources :fav_tv_shows, only: %i[new create]
end
