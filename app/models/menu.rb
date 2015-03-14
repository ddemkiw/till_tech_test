class Menu

  attr_reader :items

  def initialize
    json = File.read('hipstercoffee.json')
    info = JSON.parse(json).first
    @items = info["prices"].first
  end 

  def find(item_name)
    @items.assoc(item_name)
  end 

end 