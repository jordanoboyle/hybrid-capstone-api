class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :game_title
      t.string :subtitle
      t.integer :genre_id
      t.string :systems
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
