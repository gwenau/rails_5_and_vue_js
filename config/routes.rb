Rails.application.routes.draw do
  root to: "events#index"

  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout'}, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  resources :events do
    post 'attend', on: :member
    delete 'not_going', on: :member
  end
  resources :users, except: :create do
    get 'page/:page', action: :index, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
