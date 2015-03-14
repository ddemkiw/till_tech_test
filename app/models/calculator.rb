class Calculator 

  attr_reader :order, :total, :total_before_tax

  def initialize(order)
    @order = order
    @prices_per_item = []
    @total_before_tax = self.total_before_tax
  end 

  def total
    @total_before_tax
  end

  def total_before_tax 
    @order.each{|key, value| @prices_per_item << (key.price * value)}
    @prices_per_item.inject(:+)
  end 


end 