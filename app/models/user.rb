class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :posts
  has_many :faqs
  has_many :reviews
  
  has_many :favorite_posts
  # has_many :posts, through: :favorite_posts

  
end
