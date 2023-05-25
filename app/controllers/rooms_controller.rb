class RoomsController < ApplicationController
  #newアクションを定義する。
  def new
    @room = Room.new
  end
  #createアクションを定義する。
  
  def create
    @room = Room.new(room_params)
    if @room.save
      # 保存できたらルートパスへ。
      redirect_to root_path
    else
      # 保存できなかったらrooms/new.html.erbへ戻る。
      render :new
    end
  end

  private

  def room_params
    # 送られてくる値が配列である場合、キーに対して[]を値として記述する。
    params.require(:room).permit(:name, user_ids: [])

  end

end
