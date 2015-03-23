require 'sinatra/base'
require 'sinatra/json'
require 'json'
require 'pp'
require './app/models/order'
require './app/models/receipt'
require './app/models/menu'
require './app/models/calculator'
require './app/models/tiller'
require './app/helpers/helper'



class Till < Sinatra::Base

  TILLER = Tiller.new

  get '/' do
    @menu = Menu.new
    johns_order
    janes_order
    TILLER.add_receipt(@janes_receipt)
    TILLER.add_receipt(@johns_receipt)
    
    erb :index 
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
