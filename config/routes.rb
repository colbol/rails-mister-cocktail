Rails.application.routes.draw do

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  # get 'doses/new'

  # get 'doses/create'

  # get 'destroy', to: 'doses#destroy'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:index, :show, :edit, :new, :destroy]
end
