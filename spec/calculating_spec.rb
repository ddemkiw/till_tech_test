require 'spec_helper'

feature 'calculating' do
  let(:menu) {Menu.new}
  let(:order) {Order.new({customer_name: 'Sandi'})}
  let(:calculator) {Calculator.new({:order=>order, :menu=>menu})}
  let(:receipt_without_tax) {Receipt.new({:orders=>[order], :totals=>calculator.total_before_tax})}
  let(:receipt_with_tax) {Receipt.new({:orders=>[order], :totals=>calculator.total})}


  feature 'without tax' do 
  
    scenario 'can calculate the bill for one item' do 
      order.add("Choc Mousse", 3)
      
      expect(receipt_without_tax.total).to eq(24.6)
    end 

    scenario 'can calculate the bill for many items' do 
      order.add("Choc Mousse", 3)
      order.add("Muffin Of The Day", 3)

      expect(receipt_without_tax.total).to eq(38.25)
    end 
  end

  feature 'with tax' do 
  
    scenario 'can calculate the bill for one item' do 
      order.add("Choc Mousse", 3)

      expect(receipt_with_tax.total).to eq(26.73)
    end 

    scenario 'can calculate the bill for many items' do 
      order.add("Choc Mousse", 3)
      order.add("Muffin Of The Day", 3)

      expect(receipt_with_tax.total).to eq(41.55)
    end 
  end

end