Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :portfolios
  resources :skills
  resources :memos
  resources :blogs
end
