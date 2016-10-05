Rails.application.routes.draw do
  devise_for :users
  root to: 'entries#index'

  resources :entries, only: [:index, :new, :create, :destroy]

  # get 'graph/index'
  # get 'graph/data', :defaults => { :format => 'json' }

end
