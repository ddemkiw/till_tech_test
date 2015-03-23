require 'sinatra/base'
require 'sinatra/json'
require 'json'
require 'pp'
require './app/models/order'
require './app/models/receipt'
require './app/models/menu'
require './app/models/calculator'
require './app/helpers/helper'

class Till < Sinatra::Base
  


  get '/' do
    janes_order
    erb :index 
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
