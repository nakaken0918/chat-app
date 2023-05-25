class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      #カラム（content,room_id,user_id）を設定。
      #foreign_key: true  ...対象となるテーブルに対応したキー（room_id と user_id）があれば許可される。
      t.string  :content
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
