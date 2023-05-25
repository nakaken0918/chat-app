class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #バリデーションの設定。nameのフォームが入力されていること。
  validates :name, presence: true
  #room_userと１：多の関係にあることを示す。
  has_many :room_users
  #room_userを介してroomテーブルと１：多の関係になることを示す。
  has_many :rooms, through: :room_users

end
