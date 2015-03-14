class Calculator 

  attr_reader :order, :total_for_items

  def initialize(order)
    @order = order
    @prices = []
    self.prices
  end 

  def total
    self.total_for_items
  end

  def prices 
    @order.items.each{|item| @prices << item.total_price}
  end 

  def total_for_items
    @prices.inject(:+)
  end 

end 