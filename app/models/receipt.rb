class Receipt

  attr_reader :order, :total, :created_at

  def initialize(opts = {})
    @order = opts[:order]
    @total = opts[:totals] 
    @created_at = Time.now
  end 

  def items
    @order.items 
  end 
end 