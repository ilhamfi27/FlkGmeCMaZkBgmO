Rails.application.routes.draw do
  resources :doctors
  resources :medicines, except: [:show]
  resources :polyclinics
  resources :officers, only: [:index, :new, :create]
  get 'reports/download' => 'reports#download'
  resources :reports, only: [:index]
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'landing_page#index'
end
