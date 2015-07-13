class OrderProductsController < ApplicationController
  before_action :set_order_product, only: [:show, :edit, :update, :destroy]

  def index
    if session[:cart]
      @order_products = OrderProduct.find session[:cart]
      @total = OrderProduct.total(@order_products)
    else
      @order_products = []
    end
  end

  # dont understand this, why is where empty? no id?
  def show
    @order_products = OrderProduct.where()
  end

  def edit
  end

  def new
    @order_products = OrderProduct.new
  end

  def create 
    @order_products.save
    session[:cart] ||= []
    session[:cart].push @order_product.id

    output = {'status' => 'The item was added to your cart'}.to_json

    format.html { redirect_to order_products_path, notice: 'The item was added to your cart'}
    format.json { render :json => output }
    else
      format.html { render :new }
      format.json {render json: @order_products.errors, status: :unprocessable_entity}
    end 
  end

end








