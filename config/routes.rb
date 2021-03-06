Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'

  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
end
