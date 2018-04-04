class HomeController < ApplicationController
  def index
    
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    
    @my_coins = ["BTC", "XRP", "ADA", "XLM", "STEEM"]
    
  end
  
  def about
  end
  
  def lookup
    # if we submit anything through a form it becomes params
    @symbol = params[:sym]
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net
    HTTP.get(@uri)
    @coins = JSON.parse(@response)
    
    # error handling
    # if @symbol
    #     if @my_coins.include?(@symbol.upcase)
    #         @symbol = @symbol.upcase
    #     else
    #         @symbol = "Not a valid coin"
    #     end
    # end
    
    # if @symbol == ""
    #     @symbol = "Hey you forget to Enter a Currency Symbol"
    # end
    
  end
end
