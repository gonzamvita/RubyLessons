module CanMakeNoise
  def make_sound noises
    puts noises
  end
end

class Car
  include CanMakeNoise
  attr_reader :noise

  def initialize(engine, noise)
    @engine = engine
    @noise = noise + " " + engine.noise
  end
end

class Engine
  include CanMakeNoise
  attr_reader :noise

  def initialize(noise)
    @noise = noise
  end
end

en1 = Engine.new("puuuum")
en2 = Engine.new("fssssss")

car = Car.new(en1, "hola hola")
car.make_sound car.noise

car = Car.new(en2, "al habla car2")
car.make_sound car.noise
