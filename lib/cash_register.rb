
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize (discount = 0, total = 0)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    self.total += price*quantity
    self.last_transaction = price * quantity
    quantity.times do
      self.items << (item)
    end
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = (total - (discount.to_f)*10).to_i
      "After the discount, the total comes to $#{self.total}."
  end
end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end


end
