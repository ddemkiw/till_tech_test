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
    @calculator = Calculator.new(@order)
    @tax = @calculator.tax_added
    @total_without_tax = @calculator.total_before_tax
    erb :index 
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
