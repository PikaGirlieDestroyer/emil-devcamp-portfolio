class PortfoliosController < ApplicationController
  def index 
    @portfolio_items = Portfolio.all
  end
  
  def new 
    @portfolio_item = Portfolio.new
  end
  
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :sutitle, :body))
    

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def update
    @portfolio_item = Portfolio.find(params[:id])
      
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :sutitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def show 
      @portfolio_item = Portfolio.find(params[:id])
        unless params[:progress_attachments].nil?
           params[:progress_attachments]['image'].each do |a|
            @progress_attachment = @progress.progress_attachments.create!(:image => a)
          end 
        end
  end
end
