require 'spec_helper'

feature 'ordering' do 

  let(:menu) {Menu.new}
  let(:customer) {Customer.new('Sandi')}
  let(:order) {Order.new(customer)}
  let(:item1) {Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1]})}
  let(:receipt) {Receipt.new(order)}
  
  scenario 'customer orders' do 
    order.add([:coffee])

    expect(receipt.items[0]).to include(:coffee)
  end 

  scenario 'customer orders item from menu' do 
    order.add(item1, 3)
    
    expect(receipt.items[0].name).to include("Tiramisu")
  end 



end 