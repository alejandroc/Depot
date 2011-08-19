class StoreController < ApplicationController
  def index
    @current_date = current_date
    @products = Product.for_sale
  end

end
