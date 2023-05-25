class Room < ApplicationRecord
  #room_userと１：多の関係にあることを示す。
  has_many :room_users
  #room_userを介してuserテーブルと１：多の関係になることを示す。
  has_many :users, through: :room_users

end
