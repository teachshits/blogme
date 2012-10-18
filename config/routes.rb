BlogMe::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'

  resources :posts

  resources :tags, :only => :show

  resources :users, :only => [] do
    resources :posts, :only => :index
  end
end
