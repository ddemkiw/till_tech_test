class Receipt

  attr_reader :order

  def initialize(order, total=0)
    @order = order 
  end 

  def items
    @order.items 
  end 
end 