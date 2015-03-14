class Item

attr_accessor :name, :price

  def initialize(options = {})
    self.name = options.fetch(:name, name) 
    self.price = options.fetch(:price, price)
  end

end