class CartsController < ApplicationController


def show

end

def checkout
current_cart.status = "submitted"
current_cart.line_items.each do |line_item|
  line_item.item.inventory -= line_item.quantity
  line_item.item.save
end
current_cart.destroy
 flash[:notice] = "Successfully checked out. Your cart is now empty."
redirect_to cart_path(current_user)
end



end
