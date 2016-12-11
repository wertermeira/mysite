Rails.application.routes.draw do


  namespace :frontend do
    get 'home/index'
  end

  devise_for :users, skip: [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  namespace :backend do
    root to: 'posts#index'
    resources :posts, :contacts
  end

  root to: 'frontend/home#index'
  get 'admin', to: 'backend/posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
