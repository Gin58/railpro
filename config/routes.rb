Rails.application.routes.draw do
  root to: 'home#welcome'
  get '/home', to: 'home#index'
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_out', to: 'users/sessions#destroy'
  end

  mount Admins::Engine, at: '/admins', as: 'admin'
  devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
  }
  devise_scope :admin do
    get 'admin_sign_in', to: 'admins/sessions#new'
    get 'admin_sign_out', to: 'admins/sessions#destroy'
  end
end
