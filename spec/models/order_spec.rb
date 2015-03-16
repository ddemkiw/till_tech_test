require 'spec_helper'

describe 'Order' do 
  
  let(:item1) {double :item, :price=> 11.4, name: "tiramisu"}
  let(:item2) {double :item, :price=> 4, name: "americano"}
  let(:customer) {double :customer, name: "Sandi"}

  let(:order) { Order.new(customer) }

  it 'can add one item' do
    order.add(item1)
    expect(order.items).to eq([item1])
  end 

  it 'can add multiple items' do
    order.add(item1, 4)
    expect(order.items).to eq([item1, item1, item1, item1])
  end 

  it 'can produce line items' do
    order.add(item1, 4)
    order.add(item2, 2)
    expect(order.line_items).to eq({item1=>4, item2=>2})
  end 

 

end