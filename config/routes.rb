Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'statuses#show'

  resources :sites, only: [:index, :show, :update, :destroy]
end
