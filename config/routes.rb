Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # 仮のルーティング
  root to: "messages#index"
  #app/controllers/users_contoroller.rbにルーティング。
  #edit,updateのデータのみ取得する。
  resources :users, only: [:edit, :update]

end
