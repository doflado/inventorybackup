Rails.application.routes.draw do

  resources :regions
  resources :clubs
  devise_for :users,
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }
  resource :users
  get '/member-data', to: 'members#show'
  post '/verify', to: 'users#verify'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
