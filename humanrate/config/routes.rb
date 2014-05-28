Rails.application.routes.draw do
  root 'talks#index'
  get 'talks/:id' => 'talks#show', as: :talk
end
