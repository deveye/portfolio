class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio' ## Stylesheet route
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

	def index
		@portfolio_items = Portfolio.all
	end

	def php
		@php_portfolio_items = Portfolio.php
	end

	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
	end

	def show
	end

	def destroy
	 	# Destroy the record
	 	@portfolio_item.destroy

	 	# Redirect
  	respond_to do |format|
      format.html { redirect_to portfolio_url, notice: 'Portfolio was successfully removed.' }
    end
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'Portfolio items is now live!' }
	        format.json { render :show, status: :created, location: @portfolio_item }
	      else
	        format.html { render :new }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
	end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private 
  
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body, 
                                      technologies_attributes: [:name]
                                    )
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
    
  end
end
