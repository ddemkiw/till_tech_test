class Tiller

  attr_accessor :receipts


  def initialize
    @receipts = []
  end 

  def add_receipt(receipt)
   @receipts << receipt
  end 


end 
