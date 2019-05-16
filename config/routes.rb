Rails.application.routes.draw do
  devise_for :riders
  root to: 'moto_blogs#index'
  resources :comments
  resources :moto_blogs

  get '/auth/:provider/callback' => 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
