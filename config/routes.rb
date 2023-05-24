Rails.application.routes.draw do
  get 'messages/index'
  # 仮のルーティング
  root to: "messages#index"

end
