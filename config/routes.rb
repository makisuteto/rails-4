Rails.application.routes.draw do
  # ***** get 'users/show' を削除 *****
  root to: 'items#index'
  devise_for :users
  resources :items
  # ***** 次のルーティングを追加 *****
  resource :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
