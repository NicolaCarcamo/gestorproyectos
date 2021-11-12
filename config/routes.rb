Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/dashboard'

  root 'pages#index'
end
