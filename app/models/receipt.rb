class Receipt

  attr_reader :order, :total, :created_at

  def initialize(opts = {})
    @order = opts[:orders]
    @total = opts[:totals] 
    @created_at = Time.now
  end 

end 