require 'spec_helper'

feature 'ordering' do 

  let(:menu) {Menu.new}
  let(:order) {Order.new({customer_name: 'Sandi'})}
  let(:order2) {Order.new({customer_name: 'Jim'})}
  let(:item1) {Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1]})}
  let(:receipt) {Receipt.new({:orders=>[order]})}
  let(:receipt_with_two_orders) {Receipt.new({:orders=>[order, order2]})}
  
  scenario 'customer orders' do 
    order.add([:coffee])

    expect(receipt.items.first).to eq(order)
  end 

  scenario 'customer orders item from menu' do 
    order.add(item1, 3)

    expect(receipt.items).to be_an Array
    expect(receipt.order).to include(order)
  end 

  scenario 'more than one order per receipt' do 
    order.add(item1, 3)
    order2.add(item1)

    expect(receipt_with_two_orders.items).to be_an Array
    expect(receipt_with_two_orders.items).to include(order)
  end 

end 