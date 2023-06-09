class RoomUser < ApplicationRecord
  #roomとuserの組み合わせを管理する中間テーブルを設定する。
  #roomとuserのデータが欲しい時、それぞれ別で探すより組み合わせから探す方が無駄が少ない。

  #roomテーブルと多：１の関係にあることを示す。※roomテーブルに所属することを示す。
  belongs_to :room
  #userテーブルと多：１の関係にあることを示す。※userテーブルに所属することを示す。
  belongs_to :user

end
