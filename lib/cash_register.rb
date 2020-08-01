require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  new = []
  
  def initialize(discount = 0)
    #binding.pry
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = last_transaction
  end
  
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = @total
    @total
  end

  def apply_discount
    @total -= @total * @discount/100
    if @discount != 0
       return "After the discount, the total comes to $#{@total}."
     else  
      "There is no discount to apply."
    end
  end

  
  def void_last_transaction
    
    @total -= @price * quantity
    
  end

end
