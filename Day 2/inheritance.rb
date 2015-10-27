require("./classVariables")

class Cupcake < Muffin
  attr_reader (:topping)

  def initialize (color, flavour, topping)
    super(color, flavour)
    @topping = topping
  end

  def eat
    puts "Qué bueno el mondongo"
  end
end

myCupcake = Cupcake.new("Brown", "Chocolate", "Moar chocolate")
puts "Color: #{myCupcake.color}, flavour: #{myCupcake.flavour}, topping: #{myCupcake.topping}, shop: #{myCupcake.shop}"
myCupcake.eat
