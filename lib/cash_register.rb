require 'pry'
class CashRegister
attr_accessor :total, :discount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        @shopping_cart = ["eggs"]
        @shopping_cart << title.split*quantity
        @total += price*quantity
        @last_item = price*quantity
    end

    def apply_discount
        if @discount == 20
            @total = @total - @total * 20 / 100
        return "After the discount, the total comes to $#{total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @shopping_cart.flatten
    end

    def void_last_transaction
        @total -= @last_item
     end
end

