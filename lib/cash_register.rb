require "pry"
class CashRegister
attr_accessor :total, :discount,:item
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(item,price,quantity=1)
    x= 0
    while x < quantity
      @item << item
      x+=1
    end
    @price = price
    @quantity = quantity
    self.total += (@price*@quantity)
  end

  def apply_discount()
    if discount == 0
      "There is no discount to apply."
    else
      self.discount = 1.00 - (self.discount.to_f/100.00)
      self.total = self.total * discount
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    self.item
  end

  def void_last_transaction
    self.total -= (@price*@quantity)
  end

end
