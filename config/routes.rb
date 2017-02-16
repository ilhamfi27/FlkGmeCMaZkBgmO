Rails.application.routes.draw do
  resources :polyclinic
  root 'landing_page#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
end
