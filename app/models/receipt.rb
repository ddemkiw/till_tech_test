class Receipt

  attr_reader :order

  def initialize(order)
    @order = order 
  end 

  def items
    @order.items 
  end 
end 