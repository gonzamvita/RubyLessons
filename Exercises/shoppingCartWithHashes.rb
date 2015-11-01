require 'Pry'

class ShoppingCart
  attr_reader :items

  def initialize
    @catalog = {
      apple: 10,
      orange: 5,
      grape: 15,
      banana: 20,
      watermelon: 50
    }
    @items = {}
    @cost = 0
  end

  def add_item_to_cart(item)
    if @catalog.include?item.to_sym
      @items[item] += @catalog[item.to_sym]
    else
      @items[item] = @catalog[item]
    end
  end

  def calculate_cost

  end

  def show
  end
end

=begin
cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50
=end
