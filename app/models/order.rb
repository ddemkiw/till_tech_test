class Order

  attr_accessor :items

  Customer = Struct.new(:name)

  def initialize(opts = {})
    @items = []
    @customer = Customer.new(opts[:customer_name])
  end 

  def add(item, number=1)
    number.times do 
      @items << item
    end  
  end 

  def line_items
    @items.inject(Hash.new(0)) { |total, item| total[item] += 1 ;total}
  end


end 
