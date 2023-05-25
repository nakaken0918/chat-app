Rails.application.routes.draw do
  devise_for :users
  #app/views/rooms/index.html.erb（トップページ）の表示を要求。
  root to: "rooms#index"
  #app/controllers/users_contoroller.rbにルーティング。
  #edit,updateのデータのみ取得する。
  resources :users, only: [:edit, :update]
  #app/controllers/rooms_contoroller.rbにルーティング。
  #new,createのデータのみ取得する。
  resources :rooms, only: [:new, :create]

end
