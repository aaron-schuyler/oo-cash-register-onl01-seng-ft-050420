class CashRegister
  attr_accessor :total, :discount
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  def add_item(title, price, qty=1)
    @total = @total + (price*qty)
  end 
  def apply_discount
    @total = @total - (discount.to_f / 100 * @total).to_i
  end
end