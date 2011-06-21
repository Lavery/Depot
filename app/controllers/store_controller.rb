class StoreController < ApplicationController
  def index
    @products = Product.all
    @index_count = increment_count
    @cart = current_cart
  end
  
  def increment_count
    session[:counter] ||= 1
    session[:counter] += 1
    if session[:counter] >= 5
      return "You've been here #{session[:counter]} times!"
    else
      return nil
    end
  end

end
