class Receipt

  attr_reader :order, :total, :created_at

  def initialize(order, totals=0)
    @order = order
    @total = totals 
    @created_at = Time.now
  end 

  def items
    @order.items 
  end 
end 