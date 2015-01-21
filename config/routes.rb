Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: :create
  end

  resources :developers

  resources :projects

  get  'about' => 'home#about'

  root 'home#index'
end
