class StoreController < ApplicationController

  def index
    # get all products from database and order them by their title in abc order
    @products = Product.order(:title)
  end

end
