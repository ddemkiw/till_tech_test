require 'spec_helper'

feature 'ordering' do 
  
  scenario 'customer orders a coffee' do 
    customer = Customer.new("sandi")
    order = Order.new(customer)
    order.add(coffee)
    receipt = receipt.new(order)
    expect(receipt).to include(coffee)
  end 

end 