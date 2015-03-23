
  @menu = Menu.new



def janes_order
    @janes_order = Order.new({customer_name: 'Jane'})
    @janes_order.add("Cafe Latte", 2)
    @janes_order.add("Blueberry Muffin")
    @janes_order.add("Choc Mudcake")
    @calculator = Calculator.new({:order=>@janes_order, :menu=>@menu})
    @janes_receipt = Receipt.new({:order=>@janes_order, :calculator=>@calculator}) 
end 

def johns_order
  @johns_order = Order.new({customer_name: 'John'})
  @johns_order.add("Americano", 4)
  @johns_order.add("Blueberry Muffin", 5)
  @johns_order.add("Tiramisu", 2)
  @calculator = Calculator.new({:order=>@johns_order, :menu=>@menu})
  @johns_receipt = Receipt.new({:order=>@johns_order, :calculator=>@calculator}) 
end

