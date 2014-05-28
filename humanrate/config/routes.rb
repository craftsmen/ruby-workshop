Rails.application.routes.draw do
  root 'talks#index'
  resources :talks, only: [:index, :show] do
    resources :votes, only: [:create]
  end
end
