Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'posts#index'
  
  resources :posts do
    resources :comments
  end
  
  devise_for :users

  get 'posts_mes/:year/:month' => 'posts#posts_mes', as: :posts_mes
end
