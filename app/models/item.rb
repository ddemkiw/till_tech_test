class Item

attr_accessor :name, :price, :number
attr_reader :total_price

  def initialize(options = {})
    @name = options.fetch(:name, name) 
    @price = options.fetch(:price, price)
    @number = options.fetch(:number, number)
    @total_price = @price * @number
  end
 

end