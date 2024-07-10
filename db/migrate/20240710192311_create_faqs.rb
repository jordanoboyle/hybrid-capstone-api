class CreateFaqs < ActiveRecord::Migration[7.1]
  def change
    create_table :faqs do |t|
      t.integer :user_id
      t.string :question
      t.string :game_title
      t.integer :genre_id
      t.integer :system_id
      t.text :description

      t.timestamps
    end
  end
end
