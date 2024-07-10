class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :game_title
      t.integer :genre_id
      t.integer :system_id
      t.text :body

      t.timestamps
    end
  end
end
