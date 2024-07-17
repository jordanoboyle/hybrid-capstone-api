class AddImagesToPostsTableXTwo < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :image_url_one, :string
    add_column :posts, :image_url_two, :string
  end
end
