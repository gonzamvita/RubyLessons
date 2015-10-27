class Muffin
  attr_reader(:color, :flavour)
  @@bakery = "Ironhack"

  def initialize color, flavour
    @color = color
    @flavour = flavour
  end

  def self.show_bakery
    puts @@bakery
  end
end

Muffin.show_bakery
