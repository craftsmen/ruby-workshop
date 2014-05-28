Rails.application.routes.draw do
  devise_for :users
  root 'talks#index'
  resources :talks, only: [:index, :show] do
    resources :votes, only: [:create]
  end
end
