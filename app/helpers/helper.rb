def janes_order
    @menu = Menu.new
    @order = Order.new({customer_name: 'Jane'})
    @order.add("Cafe Latte", 2)
    @order.add("Blueberry Muffin")
    @order.add("Choc Mudcake")
    @calculator = Calculator.new({:order=>@order, :menu=>@menu})
end 
