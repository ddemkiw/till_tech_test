class Receipt

  attr_reader :order, :total

  def initialize(order, total=0)
    @order = order
    @total = total 
  end 

  def items
    @order.items 
  end 
end 