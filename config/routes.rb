Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  # root 'sessions#index'
  # get 'login' => 'sessions#new'
  # post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'

  get 'login' => 'secrets#show'
  delete 'logout' => 'secrets#destroy'
end
