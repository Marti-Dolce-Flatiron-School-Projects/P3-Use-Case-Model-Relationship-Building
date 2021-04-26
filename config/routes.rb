Rails.application.routes.draw do
  root 'welcome#index'
  get    '/signup',  to: 'users#new'
  resources :users

  resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
