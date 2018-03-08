Rails.application.routes.draw do
  get 'user/index'

  get 'user/show'

  get 'user/new'

  get 'user/edit'

  get 'user/create'

  get 'user/update'

  get 'user/destroy'

  root to: "home#index"
  resources :events
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
