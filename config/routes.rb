Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index' user can use
  # get 'restaurants/new', to: 'restaurants/new' user can acces to form for add
  # get 'restaurants/:id', to: 'restaurants#show' user can see what he added
  # post 'restaurants', to: 'restaurants#create' user can add
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurants#destroy'
  resources :restaurants do
    resources :reviews, only: [:new, :create] 
  end
end
