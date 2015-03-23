class Receipt

  attr_reader :order, :total, :created_at

  def initialize(opts = {})
    @order = opts[:orders]
    @calculator = opts[:calculator] 
    @menu = opts[:menu]
    @created_at = Time.now.strftime("%F %R")
  end 

  def total 
    @calculator.total
  end 

  def items
    @order.items
  end 

end 