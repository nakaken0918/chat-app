class Room < ApplicationRecord
  #room_userと１：多の関係にあることを示す。
  has_many :room_users
  #room_userを介してuserテーブルと１：多の関係になることを示す。
  has_many :users, through: :room_users
  #バリデーションを設定。ルーム名が入力されている（presence）場合に許可する。
  validates :name, presence: true

end
