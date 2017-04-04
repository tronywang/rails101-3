Rails.application.routes.draw do
  namespace :account do
    get 'poststouch/app/views/account/posts/index.html.erb'
  end

  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
  namespace :account do
  resources :groups
  resources :posts
end
  root 'groups#index'
end
