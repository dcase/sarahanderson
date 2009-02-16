class StaticController < ApplicationController
  def home
    @category = Category.find_by_name('Home')
    @images = @category.pieces
  end
  
  def stationery
  end
end