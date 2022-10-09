Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, param: :_username
  post '/auth/login', to: 'authentications#login'
  get '/*a', to: 'application#not_found'
  namespace :v1 do
    resources :drinks
  end
end
