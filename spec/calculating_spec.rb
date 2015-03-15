require 'spec_helper'

feature 'calculating' do

  feature 'without tax' do 
  
    scenario 'can calculate the bill for one item' do 
      menu = Menu.new
      customer = Customer.new("sandi")
      order = Order.new(customer)
      item = Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1]})
      order.add(item, 3)
      calculator = Calculator.new(order.line_items)
      receipt = Receipt.new(order, calculator.total_before_tax)

      expect(receipt.total).to eq(34.2)

    end 

    scenario 'can calculate the bill for many items' do 
      menu = Menu.new
      customer = Customer.new("sandi")
      order = Order.new(customer)
      item1= Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1]})
      item2 = Item.new({:name=>menu.find("Americano")[0], :price=>menu.find("Americano")[1]})
      order.add(item1, 3)
      order.add(item2, 3)
      calculator = Calculator.new(order.line_items)
      receipt = Receipt.new(order, calculator.total_before_tax)

      expect(receipt.total).to eq(45.45)

    end 
  end

end