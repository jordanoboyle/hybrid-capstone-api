class Post < ApplicationRecord
  belongs_to :genre, optional: true
  belongs_to :system, optional: true
  belongs_to :user

  
  has_many :favorite_posts
  has_many :users, through: :favorite_posts

  has_many :post_comments


  ##Custom validation option
  # validate :custom_validation

  # private

  # def custom_validation
  #   if some_condition
  #     errors.add(:base, "Custom error message")
  #   end
  # end
end
