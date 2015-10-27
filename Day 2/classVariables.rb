class Muffin
  attr_reader(:color, :flavour, :shop)
  @@shop = "Ironhack"

  def initialize color, flavour
    @color = color
    @flavour = flavour
  end

  def shop #to acces class variables better create a method!
    @@shop
  end
end

myMuff = Muffin.new("Brown", "Chocolate")
puts "Color: #{myMuff.color}, flavour: #{myMuff.flavour}, shop: #{myMuff.shop}"
