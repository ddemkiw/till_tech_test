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
   
    
    erb :index 
  end

  post '/receipt' do
   
    
    erb :index 
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
