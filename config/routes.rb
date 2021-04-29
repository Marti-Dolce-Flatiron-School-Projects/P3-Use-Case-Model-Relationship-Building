Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
