class Car
  def initialize noise
    @noise = noise
  end

  def make_noise
    puts @noise
  end
end

myCar = Car.new("Broom")
myCar.make_noise

myCar2 = Car.new("BROOOOOOOOOM")
myCar2.make_noise
