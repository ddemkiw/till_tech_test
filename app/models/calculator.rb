class Calculator 

  attr_reader :order, :total_for_items

  def initialize(order)
    @order = order
    @prices = []
    self.prices
  end 

  def total
    self.total_before_tax
  end

  def prices 
    @order.each{|key, value| @prices << (key.price * value)}
  end 

  def total_before_tax
    @prices.inject(:+)
  end 

end 