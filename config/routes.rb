Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'


  # You can have the root of your site routed with "root"

  root 'welcome#index'

end
