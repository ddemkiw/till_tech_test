class Receipt

  attr_reader :order, :total, :created_at

  def initialize(opts = {})
    @order = opts[:orders]
    @total = opts[:totals] 
    @created_at = Time.now
  end 

  def items
    @order.each{|order| order.items} 
  end 

  def display_items
    @order.each{|order| order.line_items}
  end 

end 