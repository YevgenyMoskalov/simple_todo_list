Rails.application.routes.draw do
  get 'account/index'
  get "projects/new_modal" => 'projects#new_modal', :as => :new_modal
  resources :projects
  resources :tasks

  devise_for :users
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
