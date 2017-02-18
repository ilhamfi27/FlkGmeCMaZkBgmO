Rails.application.routes.draw do
  resources :polyclinic
  resources :officer, only: [:index]
  root 'landing_page#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
end
