BlogMe::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'

  resources :posts do
    resources :comments, :only => [:new, :create]
  end

  resources :tags, :only => :show

  resources :users, :only => [] do
    resources :posts, :only => :index
  end

  resources :comments, :only => [:show, :edit, :update, :destroy]
end
