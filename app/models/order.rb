class Order

  attr_accessor :items

  Customer = Struct.new(:name)

  def initialize(opts = {})
    @items = {}
    @customer = Customer.new(opts[:customer_name])
  end 

  def add(item, number=1)
    @items[item] ? @items[item] +=number : @items[item]= number 
  end 


end 
