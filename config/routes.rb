Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'books/index'
  get 'books/create'
  get 'books/show'
  get 'homes/top'
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
