class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_one :current_cart, class_name: 'Cart'
  has_many :carts



  def create_current_cart
    cart = Cart.create
    self.current_cart_id = cart.id
    cart.save
    cart
  end

end
