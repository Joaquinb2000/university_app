Rails.application.routes.draw do
  get 'students', to: "students#index"
  get 'student/:id', to: "students#show"
  root 'home#index'

  resources :courses
  devise_for :users, controllers: { registrations: "users/registrations" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
end
