

class Post    < ActiveRecord::Base
   validates :title, presence: true, length: {minimum: 5}
   validates :description,  presence: true, length: {minimum: 5}
   validate :url, presence: true
   belongs_to :user
   has_many :comments
   has_many :post_categories
   has_many :categories, :through => :post_categories
 end
