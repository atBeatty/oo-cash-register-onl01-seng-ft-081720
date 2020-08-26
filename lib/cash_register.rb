
require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :items
    def initialize(discount=0)
        @@items = []

        @discount = discount
        @total = 0
    end

    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity
        if quantity != 1
            quantity.times do
                @@items << @title
            end
        else
            @@items << @title
        end

        @total = @total + @price * quantity
    end

    def apply_discount
       if @discount != 0
        @total -= (@discount/100.to_f) * @total
        "After the discount, the total comes to $#{@total.to_i}."
       else
        "There is no discount to apply."
       end
    end

    def items
        @@items
 
    end

    def void_last_transaction
        @total = @total - @price*@quantity
        @total
    end







end
