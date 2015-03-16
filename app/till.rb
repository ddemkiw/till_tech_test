require 'sinatra/base'
require 'sinatra/json'
require 'json'
require './app/models/order'
require './app/models/receipt'
require './app/models/menu'
require './app/models/calculator'
require './app/models/item'

class Till < Sinatra::Base
  
  get '/' do
    @menu = Menu.new
    @order = Order.new({customer_name: 'Jane'})
    @item1 = Item.new({:name=>@menu.find("Cafe Latte")[0], :price=>@menu.find("Cafe Latte")[1]})
    @item2 = Item.new({:name=>@menu.find("Blueberry Muffin")[0], :price=>@menu.find("Blueberry Muffin")[1]})
    @item3 = Item.new({:name=>@menu.find("Choc Mudcake")[0], :price=>@menu.find("Choc Mudcake")[1]})
    @order.add(@item1, 2)
    @order.add(@item2)
    @order.add(@item3)
    @calulator = Calculator.new(@order.line_items)
    @receipt = Receipt.new({:orders=>@order, :total=>@calculator})
    json(@receipt, :encoder => :to_json, :content_type => :js)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
