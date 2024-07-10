class CreateSubGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :sub_genres do |t|
      t.integer :genre_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
