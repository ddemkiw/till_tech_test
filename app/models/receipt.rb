class Receipt

  attr_reader :order, :total, :created_at, :calculator

  def initialize(opts = {})
    @order = opts[:order]
    @calculator = opts[:calculator] 
    @created_at = Time.now.strftime("%F %R")
  end 

  def total 
    @calculator.total
  end 

  def items
    @order.items
  end 

end 