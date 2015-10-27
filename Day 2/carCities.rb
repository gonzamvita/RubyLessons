require 'Pry'
class Car
  def initialize noise
    @noise = noise
    @cities = "cities.txt"
  end

  def make_noise
    puts @noise
  end

  def add_city city
    fileContent = IO.read(@cities)
    fileContent << city + "\n"
    IO.write(@cities, fileContent)
  end

  def cities
    IO.read(@cities)
  end
end

myCar = Car.new("Broom")
myCar.add_city("Madrid")
myCar.add_city("Barcelona")
myCar.add_city("Malaga")

puts myCar.cities()
