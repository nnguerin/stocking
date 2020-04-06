class HomeController < ApplicationController
  def index
  	@api = StockQuote::Stock.new(api_key: 'pk_6a84130a6fd54642b5ba8f6623fea207')
  	
  	if params[:ticker] == ""
  		@nothing = "You need a symbol!"
  	elsif params[:ticker]
		
  		begin
		@stock = StockQuote::Stock.quote(params[:ticker])
		rescue 
			@error = "What are you, silly? " + params[:ticker] + " ain't no real stock."
		end
  	end
	
  end

  def about
  end

end
