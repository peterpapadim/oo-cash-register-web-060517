require "pry"

class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=nil)
      @items = []
      @total = 0
      @discount = discount
      @transactions = []
  end


  def add_item(title, price, quantity=1)
      quantity.times do |i|
        @items << title
        @transactions << price
      end
      @total += price * quantity
  end


  def apply_discount
      if @discount == nil
          "There is no discount to apply."
      else
         @total -= (@total * @discount) / 100
        "After the discount, the total comes to $#{@total}."
      end
  end


  def items
    @items
  end


  def void_last_transaction
    @total -= @transactions.last
  end


end
