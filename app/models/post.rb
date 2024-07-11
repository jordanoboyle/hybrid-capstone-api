class Post < ApplicationRecord
  belongs_to :genre
  belongs_to :system
  belongs_to :user

end
