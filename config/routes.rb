Rails.application.routes.draw do
  root to: 'page#about'
  get 'page/about'
  get 'page/contact'
  resources :portfolios
  resources :skills, except: [:show]
  resources :memos
  resources :blogs
end
