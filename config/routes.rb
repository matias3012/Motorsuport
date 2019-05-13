Rails.application.routes.draw do
  devise_for :riders
  root to: 'blogs#index'
  resources :comments
  resources :blogs

  get '/auth/:provider/callback' => 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
