require 'spec_helper'

feature 'calculating' do
  let(:menu) {Menu.new}
  let(:order) {Order.new({customer_name: 'Sandi'})}
  let(:item1) {Item.new({:name=>"Tiramisu", :price=>menu.find("Tiramisu")})}
  let(:item2) {Item.new({:name=>"Americano", :price=>menu.find("Americano")})}
  let(:calculator) {Calculator.new(order)}
  let(:receipt_without_tax) {Receipt.new({:orders=>[order], :totals=>calculator.total_before_tax})}
  let(:receipt_with_tax) {Receipt.new({:orders=>[order], :totals=>calculator.total})}


  feature 'without tax' do 
  
    scenario 'can calculate the bill for one item' do 
      order.add(item1, 3)
      
      expect(receipt_without_tax.total).to eq(34.2)
    end 

    scenario 'can calculate the bill for many items' do 
      order.add(item1, 3)
      order.add(item2, 3)

      expect(receipt_without_tax.total).to eq(45.45)
    end 
  end

  feature 'with tax' do 
  
    scenario 'can calculate the bill for one item' do 
      order.add(item1, 3)

      expect(receipt_with_tax.total).to eq(37.15)
    end 

    scenario 'can calculate the bill for many items' do 
      order.add(item1, 3)
      order.add(item2, 3)

      expect(receipt_with_tax.total).to eq(49.38)
    end 
  end

end