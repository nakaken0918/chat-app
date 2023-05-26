class Message < ApplicationRecord
  #roomテーブルと多：１の関係であることを示す。
  belongs_to :room
  #userテーブルと多：１の関係であることを示す。
  belongs_to :user
  #画像ファイルのテーブルと１：１の関係であることを示す。
  has_one_attached :image
  #contentカラムに情報が入力されていれば許可される。
  validates :content, presence: true, unless: :was_attached?
  #画像ファイルの有無をチェックする。true か falseで unlessに返答する。
  def was_attached?
    self.image.attached?
  end

end
