class Order

  attr_accessor :items

  def initialize(customer, *items)
    @items = items
    @customer = customer
  end 

  def add(item)
    @items << item 
  end 

end 
