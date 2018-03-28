class ItemsController < ApplicationController
before_action :set_cart!

def show
@item = Item.find(params[:id])
end




end
