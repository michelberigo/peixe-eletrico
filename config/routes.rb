Rails.application.routes.draw do
  resources :newsletters , only: [:create, :destroy]
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'posts#index'
  
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  
  devise_for :users

  get 'posts_mes/:year/:month' => 'posts#posts_mes', as: :posts_mes
  get 'newsletters/unsubscribe' => 'newsletters#unsubscribe'
end
