class Product < ActiveRecord::Base

  # attr_accessible :name, :price, :designer, :img, :stock

  belongs_to :type
  has_many :product_tags
  has_many :tags, through: :product_tags
  has_many :order_products
  has_many :orders, through: :order_products

  mount_uploader :img, AvatarUploader

end