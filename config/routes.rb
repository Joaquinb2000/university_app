Rails.application.routes.draw do
  root 'home#index'

  resources :courses
  devise_for :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
end
