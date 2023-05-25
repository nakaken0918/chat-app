class Message < ApplicationRecord
  #roomテーブルと多：１の関係であることを示す。
  belongs_to :room
  #userテーブルと多：１の関係であることを示す。
  belongs_to :user
  #contentカラムに情報が入力されていれば許可される。
  validates :content, presence: true

end
