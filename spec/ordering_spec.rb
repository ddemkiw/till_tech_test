require 'spec_helper'

feature 'ordering' do 

  let(:menu) {Menu.new}
  let(:order) {Order.new({customer_name: 'Sandi'})}
  let(:item1) {Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1]})}
  let(:receipt) {Receipt.new({:orders=>[order]})}
  
  scenario 'customer orders' do 
    order.add([:coffee])

    expect(receipt.items.first).to eq(order)
  end 

  scenario 'customer orders item from menu' do 
    order.add(item1, 3)

    expect(receipt.items).to be_an Array
    expect(receipt.order).to include(order)
  end 

end 