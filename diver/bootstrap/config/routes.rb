Rails.application.routes.draw do
  get 'tops/index'
  resources :blogs
end
