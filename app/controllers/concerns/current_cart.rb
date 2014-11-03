module CurrentCart 
  extend ActiveSupport::Concern

  private 

  def set_cart
    @cart = Cart.find(session[:cart_id])

    rescueActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

end