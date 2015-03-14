class Order

  attr_accessor :items

  def initialize(customer)
    @items = []
    @customer = customer
  end 

  def add(item, number=1)
     item << number
     @items << item  
  end 

end 
