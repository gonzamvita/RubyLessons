require 'pry'

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end


homes = [
    Home.new("City Center", "Madrid", 2, 35),
    Home.new("City Outside", "Madrid", 5, 50),
    Home.new("City Duplex", "Madrid", 6, 70),
    Home.new("Beach for two", "Málaga", 2, 45),
    Home.new("Sea and Mountain", "Ibiza", 4, 65),
    Home.new("Europe Center", "Berlin", 3, 50),
    Home.new("Midnight Sun", "Lapland", 4, 70),
    Home.new("Island Venue", "Stockholm", 4, 95),
    Home.new("Emperor's Place", "Roma", 6, 120)
  ]

def catalogo(arr)
  arr.each{|home| puts("#{home.name} in #{home.city}\nPrice: $#{home.price.to_s} a night\n\n")}
end

catalogo(homes)
#homes.each{|home| puts("#{home.name} in #{home.city}\nPrice: $#{home.price.to_s} a night\n\n")}

homesByPrice = homes.sort { |home1, home2| home1.price <=> home2.price }
catalogo(homesByPrice)

def lookForCity(arr)
  puts "Give me the city you are looking at:"
  userCity = gets.chomp.downcase.capitalize!
  binding.pry
  user_homes = arr.select{ |hm| hm.city == userCity }
end

homesUserLookingAt = lookForCity(homes)

catalogo(homesUserLookingAt)

prices = homesUserLookingAt.map { |home| home.price }
puts (prices.reduce(0.0) { |sum, price| sum += price } / prices.length)

def lookForPrice(arr)
  puts "Give me the price you are looking for:"
  userPrice = gets.chomp.to_i
  binding.pry
  price_home = arr.find { |home| home.price == userPrice  }
end

puts lookForPrice(homes)
