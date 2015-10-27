class Car
  def initialize noise, color
    @noise = noise
    @color = color
  end

  def make_noise
    puts @noise
  end

  def self.noise_twice car
    2.times{car.make_noise}
  end
end

class RacingCar < Car
  def initialize color
    super("booom", color)
  end
end

formula1 = RacingCar.new("Red")

formula1.make_noise()
