Rails.application.routes.draw do
  get 'home/index'
  get 'home/goodbye'
  root 'home#index'
  resources :tasks
  resources :movements
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
