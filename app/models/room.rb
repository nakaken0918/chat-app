class Room < ApplicationRecord
  #room_userテーブルと１：多の関係にあることを示す。
  has_many :room_users
  #room_userテーブルを介してuserテーブルと１：多の関係になることを示す。
  has_many :users, through: :room_users
  #messageテーブルと１：多の関係にあることを示す。
  has_many :messages
  #バリデーションを設定。ルーム名が入力されていれば（presence）許可される（true）。
  validates :name, presence: true

end
