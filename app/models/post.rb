class Post < ApplicationRecord
  belongs_to :genre
  belongs_to :system
  belongs_to :user

  
  has_many :favorite_posts
  has_many :users, through: :favorite_posts

end
