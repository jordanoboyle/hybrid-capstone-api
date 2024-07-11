class Genre < ApplicationRecord
  has_many :posts
  has_many :faqs
  has_many :reviews


end
