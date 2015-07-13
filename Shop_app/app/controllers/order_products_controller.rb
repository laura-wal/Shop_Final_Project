class OrderProductsController < ApplicationController

  def index
    if session[:cart]
      @order_products = OrderProduct.find session[:cart]
      @total = OrderProduct.total(@order_products)
    else
      @order_products = []
    end
  end

  def show
    @order_products = OrderProduct.new
  end

end








