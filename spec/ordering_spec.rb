require 'spec_helper'

feature 'ordering' do 
  
  scenario 'customer orders' do 
    customer = Customer.new("sandi")
    order = Order.new(customer)
    order.add([:coffee])
    receipt = Receipt.new(order)
    expect(receipt.items[0]).to include(:coffee)
  end 

  scenario 'customer orders item from menu' do 
    menu = Menu.new
    customer = Customer.new("sandi")
    order = Order.new(customer)
    item = Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1]})
    order.add(menu.find("Tiramisu"), 3)
    receipt = Receipt.new(order)
    expect(receipt.items[0]).to include("Tiramisu")
  end 



end 