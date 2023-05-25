class UsersController < ApplicationController

  def edit
  end
  #データを保存する。
  def update
    #
    if current_user.update(user_params)
      #
      redirect_to root_path
    else
      render :edit
    end
    
  end

  private#以下のデータは送信のみ許可される。

  def user_params
    #requireで外部からデータ（user）を読み込む？
    #permitで選択したデータ（name,email）のみ取得する。
    params.require(:user).permit(:name, :email)

  end

end
