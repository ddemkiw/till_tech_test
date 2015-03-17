class Calculator 

  attr_reader :order, :total, :total_before_tax, :tax_added


  def initialize(order)
    @order = order
    @prices_per_item = []
    @total_before_tax = self.total_without_tax
    @tax_rate = 0.0864
    @tax_added = self.tax
  end 

  def total
    (@total_before_tax + @tax_added).round(2)
  end

  def total_without_tax 
    @order.line_items.each{|key, value| @prices_per_item << (key.price * value)}
    @prices_per_item.inject(:+)
  end 

  def tax
    (@total_before_tax * @tax_rate).round(2)
  end 


end 