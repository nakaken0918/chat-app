Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # 仮のルーティング
  root to: "messages#index"

end
