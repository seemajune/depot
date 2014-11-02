class Product < ActiveRecord::Base
  # ensure all text fields all contain something before a row is written to the database.
  validates :title, :description, :image_url, presence: true
  # ensure the price is a positive, solid number
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  # ensure that no other row (product) in the products table has the same title as the one being added.
  validates :title, uniqueness: true
  # make sure the image is a .gif, .jpg or .png format
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'acceptable image formats include .gif, .jpg or .png'
  }

end
