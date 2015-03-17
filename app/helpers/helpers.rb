helpers do 

  def janes_order
    @menu = Menu.new
    @order = Order.new({customer_name: 'Jane'})
    @item1 = Item.new({:name=>@menu.find("Cafe Latte")[0], :price=>@menu.find("Cafe Latte")[1]}
    @item2 = Item.new({:name=>@menu.find("Blueberry Muffin")[0], :price=>@menu.find("Blueberry Muffin")[1]}
    @item3 = Item.new({:name=>@menu.find("Choc Mudcake")[0], :price=>@menu.find("Choc Mudcake")[1]}
    @order.add(@item1, 2)
    @order.add(@item2)
    @order.add(@item3)
    @calulator = Calculator.new(@order)
    @receipt = Receipt.new(@order, @calculator)
  end 

end