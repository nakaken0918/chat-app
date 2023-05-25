class RoomsController < ApplicationController
  #newアクションを定義する。
  def new
    @room = Room.new
  end

end
