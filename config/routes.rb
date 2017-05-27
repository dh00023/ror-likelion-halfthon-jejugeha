Rails.application.routes.draw do

  devise_for :users
  
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments, only: [:create, :destroy]
  end

  root 'posts#index'
  
end
