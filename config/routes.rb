Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'users/profile'
  get 'users/destroy'
  root 'posts#index'
  resources :posts do 
    resources :comments
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
