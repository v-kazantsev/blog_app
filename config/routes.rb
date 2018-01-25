Rails.application.routes.draw do
  resources :portfolios
  root to: 'blogs#index'
  resources :blogs
end
