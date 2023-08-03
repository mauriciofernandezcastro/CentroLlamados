Rails.application.routes.draw do
  resources :calls
  resources :clients

  devise_for :users, controllers: {
    sessions: "users/sessions"
  }
  get 'home/index'

  get '/users/sign_up', to: redirect('/users/sign_in')
  # Defines the root path route ("/")
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
