Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :events do
    resources :participations
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
