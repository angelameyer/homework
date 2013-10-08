Test7::Application.routes.draw do
  get "users/new"
  match '/signup',  to: 'users#new', via: 'get'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  put    '/users/:id(.:format)', to: 'account#show'
  get 'users/:id/edit' => "users#edit",  :as => 'edit'
  post 'users/:id' => "users#update", :as => 'update_user'
end
