require 'Date'
require 'pry'

class ShoppingCart

  def initialize
    @items = []
    @cost = 0
  end

  def add_item_to_cart(item)
    index = @items.find_index { |existing_item| existing_item[1] == item.name }
    binding.pry
    if index != nil && @items[index][1] == item.name
      @items[index] = [
        @items[index][0] += 1,
        @items[index][1] = item.name,
        @items[index][2] += item.price
      ]
    else
      @items << [1, item.name, item.price]
    end
  end

  def calculateTotal
    @items.each do |x|
      @cost += x.price
    end

    if @items.length > 4
      @cost -= @cost * 10 / 100
    end
    puts "Your total today is #{@cost} euros"
  end

  def show
    @items.each { |e| puts "#{e[0]} #{e[1]}: #{e[2]}€" }
  end

  def checkout
    calculateTotal()
    show()
  end
end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Apple < Item
  def initialize
    super("Apple", 10)
    @discount = 1
  end
end

class Orange < Item
  def initialize
    super("Apple", 10)
    @discount = 1
  end
end

class Grapes < Item
  def initialize
    super("Apple", 10)
    @discount = 1
  end
end

class Banana < Item
  def initialize
    super("Apple", 10)
    @discount = 1
  end
end

class Watermelon < Item
  def initialize
    super("Apple", 10)
    @discount = 1
  end
end

cart = ShoppingCart.new
apple = Apple.new
orange = Orange.new

cart.add_item_to_cart(apple)
cart.add_item_to_cart(apple)
cart.add_item_to_cart(apple)
cart.add_item_to_cart(orange)

cart.show
