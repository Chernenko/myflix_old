Myflix::Application.routes.draw do
  resources :videos, only: [:index, :show]
  resources :categories, only: [:index, :show]
  get 'ui(/:action)', controller: 'ui'
end
