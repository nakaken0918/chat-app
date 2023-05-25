class Message < ApplicationRecord
  #roomテーブルと多：１の関係であることを示す。
  belongs_to :room
  #userテーブルと多：１の関係であることを示す。
  belongs_to :user

end
