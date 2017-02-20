Rails.application.routes.draw do
  resources :polyclinic
  resources :officer, only: [:index]
  resources :user_profile, only: [:index]
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'landing_page#index'
end
