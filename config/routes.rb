Rails.application.routes.draw do

  resources :expenses do
    resources :kinds
    resources :stores
  end

  devise_for :users

  root to: 'home#index'

end
