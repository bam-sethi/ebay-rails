class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :customers, through: :reviews
end
