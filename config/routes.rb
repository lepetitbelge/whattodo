Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/create'
  get 'comments/delete'
  devise_for :users
  root to: 'pages#home'

  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
