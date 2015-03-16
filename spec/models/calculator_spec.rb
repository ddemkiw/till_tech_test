require 'spec_helper'

describe 'Calculator' do 
  
  let(:item) {double :item, :price=> 11.4, name: "tiramisu"}
  let(:order) {double :order, :items=> {item=> 3}}

  let(:calulator) { Calculator.new(order.items) }

  it 'adds up the bill with tax' do
    expect(calulator.total).to eq(37.15)
  end 

   it 'adds up the bill without tax' do
    expect(calulator.total_before_tax).to eq(34.2)
  end 

  it 'calculates the tax for the bill' do
    expect(calulator.tax).to eq(2.95)
  end

end