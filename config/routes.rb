Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :users, only: [:new, :create]
  
  post 'users/confirm' => 'users#confirm'
  get 'users' => 'users#new'
  
  get 'about' => 'welcome#about'
  root 'welcome#index'
end
