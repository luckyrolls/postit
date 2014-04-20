class Category < ActiveRecord::Base
  validates :name, presense: true
  has_many :post_categories
  has_many :posts, :through => :post_categories
end