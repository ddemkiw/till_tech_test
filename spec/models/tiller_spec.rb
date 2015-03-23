require 'spec_helper'

describe 'Tiller' do 

  let(:receipt) { double :receipt}
  let(:tiller) { Tiller.new}

  it 'can hold receipts' do
    tiller.add_receipt(receipt)
    expect(tiller.receipts).to include(receipt)
  end 

end