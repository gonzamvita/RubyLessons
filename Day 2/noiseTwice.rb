class Car
  def initialize noise
    @noise = noise
  end

  def make_noise
    puts @noise
  end

  def self.noise_twice car
    2.times{car.make_noise}
  end
end

Car.noise_twice(Car.new("broooooooom"))
