class Order

  def initialize(customer)
    @order = []
    @customer = customer
  end 

  def add(item)
    @order << item 
  end 

end 
