require 'spec_helper'

describe 'Receipt' do 
 
  let(:order) {double :order, customer: "Sandi", :items => {"americano"=>3}}
  let(:calculator) {double :calculator, :total=> 16.72}

  let(:receipt) {Receipt.new({:order=>[order], :calculator=>calculator})}

  it 'is created at a certain time' do
    new_time = Time.local(2015, 9, 1, 12, 0, 0)
    Timecop.freeze(new_time)

    expect(receipt.created_at).to eq(new_time.strftime("%F %R"))
  end 

  it 'contains an order' do
    expect(receipt.order).not_to be_nil 
  end

  it 'contains a price calculator' do 
    expect(receipt.total).not_to be_nil 
  end  


end