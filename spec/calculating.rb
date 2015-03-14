require 'spec_helper'

feature 'calculating' do 
  
  scenario 'can calculate the bill for one item' do 
    menu = Menu.new
    customer = Customer.new("sandi")
    order = Order.new(customer)
    order.add(menu.find("Tiramisu"), 3)
    total = TotalCalculator.new(order)
    receipt = Receipt.new(order, total)

    expect(receipt.items[0]).to include("Tiramisu")

  end 

end