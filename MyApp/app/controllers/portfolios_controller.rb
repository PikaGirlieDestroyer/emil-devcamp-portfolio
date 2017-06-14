class PortfoliosController < ApplicationController
  def index 
    @portflio_items = Portfolio.all
  end
end
