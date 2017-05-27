Rails.application.routes.draw do
  root 'posts#index'
  
  resources :posts, except: [:edit, :destroy] do
    collection do
      get 'search'
    end
  end
  
end
