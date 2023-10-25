Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :rooms do
    member do
      post 'take_slot'
    end
  end

  root to: 'rooms#index'

  resources :rooms do
    resources :players, except: [:index, :show]
  end

end
