class Item

attr_accessor :name, :price

  def initialize(opts = {})
    @name = opts[:name] 
    @price = opts[:price] 
  end
 

end