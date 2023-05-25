class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #room_userテーブルと１：多の関係にあることを示す。
  has_many :room_users
  #room_userテーブルを介してroomテーブルと１：多の関係になることを示す。
  has_many :rooms, through: :room_users
  #messageテーブルと１：多の関係にあることを示す。
  has_many :messages

  #バリデーションを設定。nameが入力されていれば（presence）許可される（true）。
  validates :name, presence: true

end
