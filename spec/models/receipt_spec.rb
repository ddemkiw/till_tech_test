require 'spec_helper'

describe 'Receipt' do 
  
  let(:item1) {double :item, :price=> 11.4, name: "tiramisu"}
  let(:item2) {double :item, :price=> 4, name: "americano"}
  let(:order) {double :order, customer: "Sandi", :items => [item1, item2]}
  let(:calculator) {double :calculator, :total=> 16.72, :tax=>1.32, :total_before_tax=>15.4}

  let(:receipt) {Receipt.new({:orders=>order, :totals=>calculator})}

  it 'is created at a certain time' do
    new_time = Time.local(2015, 9, 1, 12, 0, 0)
    Timecop.freeze(new_time)
    expect(receipt.created_at).to eq(new_time)
  end 

  it 'contains an order' do
    expect(receipt.order).not_to be_nil 
  end

  it 'contains a price calculator' do 
    expect(receipt.total).not_to be_nil 
  end  


end