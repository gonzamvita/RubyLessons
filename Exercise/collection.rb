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
    Home.new("Nizar's place", "San Juan", 2, 42),
    Home.new("Fernando's place", "Seville", 5, 47),
    Home.new("Josh's place", "Pittsburgh", 3, 41),
    Home.new("Gonzalo's place", "Málaga", 2, 45),
    Home.new("Ariel's place", "San Juan", 4, 49)
  ]

homes.each{|home| puts("#{home.name} in #{home.city}\nPrice: $#{home.price.to_s} a night\n\n")}
                      #(home.name + " in " + home.city + "\nPrice: " + "$" + home.price.to_s + " a night\n\n")

prices = homes.map { |home| home.price }

puts prices.reduce(0.0) { |sum, price| sum += price } / prices.length

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end
