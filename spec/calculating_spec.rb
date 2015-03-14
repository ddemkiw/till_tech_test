require 'spec_helper'

feature 'calculating' do 
  
  scenario 'can calculate the bill for one item' do 
    menu = Menu.new
    customer = Customer.new("sandi")
    order = Order.new(customer)
    item = Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1], :number=>3})
    order.add(item)
    calculator = Calculator.new(order)
    receipt = Receipt.new(order, calculator.total)

    expect(receipt.total).to eq(34.2)

  end 

  scenario 'can calculate the bill for many items' do 
    menu = Menu.new
    customer = Customer.new("sandi")
    order = Order.new(customer)
    item1= Item.new({:name=>menu.find("Tiramisu")[0], :price=>menu.find("Tiramisu")[1], :number=>3})
    item2 = Item.new({:name=>menu.find("Americano")[0], :price=>menu.find("Americano")[1], :number=>3})
    order.add(item1)
    order.add(item2)
    calculator = Calculator.new(order)
    receipt = Receipt.new(order, calculator.total)

    expect(receipt.total).to eq(45.45)

  end 

end