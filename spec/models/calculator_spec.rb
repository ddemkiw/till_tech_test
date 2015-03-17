require 'spec_helper'

describe 'Calculator' do 
  
  let(:menu) {double :menu}
  let(:order) {double :order, :items=>{"americano"=> 3, "tirimisu"=>1}}
  let(:calulator) { Calculator.new({:order=>order, :menu=>menu})}

  before(:each) do 
    allow(menu).to receive(:find).with("americano").and_return(3.75)
    allow(menu).to receive(:find).with("tirimisu").and_return(11.4)
  end

  it 'adds up the bill with tax' do
    expect(calulator.total).to eq(24.61)
  end 

   it 'adds up the bill without tax' do
    expect(calulator.total_before_tax).to eq(22.65)
  end 

  it 'calculates the tax for the bill' do
    expect(calulator.tax).to eq(1.96)
  end

end