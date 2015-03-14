class Item

attr_accessor :name, :price

  def initialize(options = {})
    @name = options.fetch(:name, name) 
    @price = options.fetch(:price, price) 
  end
 

end