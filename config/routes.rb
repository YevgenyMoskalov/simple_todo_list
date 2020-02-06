Rails.application.routes.draw do
  get 'account/index'
  # get 'projects/index'
  # get 'task/index'
  resources :projects do
    resources :tasks
  end
  devise_for :users
  root 'account#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
