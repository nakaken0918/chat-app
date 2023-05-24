class ApplicationController < ActionController::Base
  #ログインしてないユーザーをログインページに飛ばす。
  before_action :authenticate_user!
  #全てのアクション実行の前にワンクッション設ける。セキュリティ対策。
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    #deviseでユーザー登録するとき、以下のメソッドで設定したカラムが許可される。
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
