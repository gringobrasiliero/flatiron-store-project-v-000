module ApplicationHelper


  def new_cart_for_current_user
      current_user.current_cart = Cart.create
      current_user.save
    end

  def current_cart
    if current_user
      current_user.current_cart
 end
end


end
