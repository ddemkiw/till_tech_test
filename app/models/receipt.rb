class Receipt

  attr_reader :order, :total, :created_at

  def initialize(order, total=0)
    @order = order
    @total = total 
    @created_at = Time.now
  end 

  def items
    @order.items 
  end 
end 