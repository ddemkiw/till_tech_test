class Calculator 

  attr_reader :order

  def initialize(order)
    @order = order
    @prices = []
    self.prices
  end 

  def prices 
    @order.items.each{|item| @prices << item.total_price}
  end 

  def total
    @prices.inject(:+)
  end 

end 