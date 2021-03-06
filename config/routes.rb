Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'signup', to: 'users#new'
  get 'users', to: 'users#create'
  resources :users, except: [:new]
end
