Rails.application.routes.draw do
  devise_for :users
  #app/views/rooms/index.html.erb（トップページ）の表示を要求。
  root to: "rooms#index"
  #app/controllers/users_contoroller.rbにルーティング。
  #edit,updateのデータのみ取得する。
  resources :users, only: [:edit, :update]
  #app/controllers/rooms_contoroller.rbにルーティング。
  #new,createのデータのみ取得する。
  resources :rooms, only: [:new, :create, :destroy] do
    #ネスト親のroomsに属するmessages_controller.rbにルーティング。
    #index,createのデータのみ取得する。
    #この組み合わせにより、メッセージ関連のルーム情報が得られるようになる。
    resources :messages, only: [:index, :create]

  end

end
