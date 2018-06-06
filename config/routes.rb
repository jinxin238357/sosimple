Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  mount RailsAdmin::Engine => '/ioklqwasadmin', as: 'rails_admin'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/user' => 'pages#user'

  root to: "pages#home"

end
