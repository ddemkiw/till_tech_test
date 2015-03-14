require 'spec_helper'

feature 'ordering' do 
  
  scenario 'customer orders a coffee' do 
    customer = Customer.new("sandi")
    order = Order.new(customer, :coffee, :muffin)
    receipt = Receipt.new(order)
    expect(receipt.items).to include(:coffee)
  end 

end 