require 'spec_helper'

describe 'Order' do 

  let(:order) { Order.new({customer_name: 'Sandi'}) }

  it 'can add one item' do
    order.add("tiramisu", 1)
    
    expect(order.items).to eq({"tiramisu"=>1})
  end 

  it 'can add multiple items' do
    order.add("tiramisu", 4)

    expect(order.items).to eq({"tiramisu"=>4})
  end 


  it 'can keep track of number of items multiple items' do 
    order.add(:coffee, 3)
    order.add(:coffee, 1)
    order.add(:milk, 1)

    expect(order.items).to eq({:coffee=>4, :milk=>1})
  end
 

end