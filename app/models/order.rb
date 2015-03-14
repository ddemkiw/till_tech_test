class Order

  attr_accessor :items

  def initialize(customer)
    @items = []
    @customer = customer
  end 

  def add(item, number=1)
    number.times do 
      @items << item
    end  
  end 

  def line_items
    items.inject(Hash.new(0)) { |total, item| total[item] += 1 ;total}
  end


end 
