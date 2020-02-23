Rails.application.routes.draw do
  root to: 'home#welcome'
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
  }
  get '/home', to: 'home#index'

  mount Admins::Engine, at: '/admins', as: 'admin'
  devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
  }
end
