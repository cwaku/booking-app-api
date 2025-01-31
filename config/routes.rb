Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'users/register', to: 'users#create'
      post 'auth/login', to: 'authentication#login'
      put 'users/:id', to: 'users#update'
      delete 'users/:id', to: 'users#destroy'
    end

    namespace :v2 do
      get 'motorcyles', to: 'motorcyles#index'
      get 'motorcyles/:id', to: 'motorcyles#show'
      post 'motorcyles/new', to: 'motorcyles#create'
      put 'motorcyles/:id', to: 'motorcyles#update'
      delete 'motorcyles/:id', to: 'motorcyles#destroy'

      get 'my_reservations', to: 'my_reservations#index'
      # get 'my_reservations/:id', to: 'my_reservations#show'
      get 'available_motorcycles', to: 'reservations#index'
      get 'reserve_motorcycle/:id', to: 'reservations#show'
      post 'reservations/new', to: 'reservations#create'
      put 'reservations/:id', to: 'reservations#update'
      delete 'reservations/:id', to: 'reservations#destroy'

    end

  end
end
