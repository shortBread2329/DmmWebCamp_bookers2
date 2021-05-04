Rails.application.routes.draw do
  
  get 'book_comments/create'
  get 'book_comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  # users_controller
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # homes_controller
  root :to  => "homes#top"
  get "home/about" => "homes#about"
  
  # books_controller
  resources :books do
    resources :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
 
  
end
