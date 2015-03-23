class Tiller

  attr_accessor :receipts


  def initialize
    @receipts = []
  end 

  def add_receipt(receipt)
   @receipts << receipt
  end 

  def clear_receipts
    @receipts.clear
  end


end 
