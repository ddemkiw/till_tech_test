require 'spec_helper'

feature 'ordering' do 
  
  scenario 'customer orders' do 
    customer = Customer.new("sandi")
    order = Order.new(customer)
    order.add(:coffee)
    receipt = Receipt.new(order)
    expect(receipt.items).to include(:coffee)
  end 

  scenario 'customer orders item from menu' do 
    menu = Menu.new
    customer = Customer.new("sandi")
    order = Order.new(customer)
    order.add("Tiramisu", 3)
    receipt = Receipt.new(order)
    expect(receipt.items).to include("Tiramisu")
  end 

end 