class Calculator 

  attr_reader :order, :total, :total_before_tax


  def initialize(order)
    @order = order
    @prices_per_item = []
    @total_before_tax = self.total_without_tax
    @tax_rate = 0.09
    @tax = self.tax
  end 

  def total
    (@total_before_tax + @tax).round(2)
  end

  def total_without_tax 
    @order.each{|key, value| @prices_per_item << (key.price * value)}
    @prices_per_item.inject(:+)
  end 

  def tax
    @total_before_tax * @tax_rate
  end 


end 