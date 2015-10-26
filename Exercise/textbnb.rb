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

class Handler

  def initialize
    @homes = [
      Home.new("City Center", "Madrid", 2, 35),
      Home.new("City Outside", "Madrid", 5, 50),
      Home.new("City Duplex", "Madrid", 6, 70),
      Home.new("Beach for two", "Málaga", 2, 45),
      Home.new("Sea and Mountain", "Ibiza", 4, 65),
      Home.new("Europe Center", "Berlin", 3, 50),
      Home.new("Midnight Sun", "Lapland", 4, 70),
      Home.new("Island Venue", "Stockholm", 4, 95),
      Home.new("Emperor's Place", "Roma", 6, 120)
    ];
  end

  def menu
    puts("Welcome to TextBnB! Choose an option:\n")
    option = -1
    while !(option == 0)
      puts("1 - Show Homes\n2 - Look for city\n3 - Look for price\n4 - Order by price\n5 - Get the average price\n0 - Exit")
      case option = gets.chomp.to_i
        when 1
          showHomes(@homes)
        when 2
          lookForCity(@homes)
        when 3
          lookForPrice(@homes)
        when 4
          orderByPrice(@homes)
        when 5
          prices = @homes.map { |home| home.price }
          avg = prices.reduce(0.0) { |sum, price| sum += price } / prices.length
          puts ("The average price is #{avg} euros\n")
        when 0
      end
    end
  end

  def showHomes(arr)
    arr.each{|home| puts("#{home.name} in #{home.city}\nPrice: $#{home.price.to_s} a night\n\n")}
  end

  def lookForCity(arr)
    puts "Give me the city you are looking at:"
    userCity = gets.chomp.downcase.capitalize!
    byCityHomes = arr.select{ |hm| hm.city == userCity }
    showHomes(byCityHomes)
  end

  def lookForPrice(arr)
    puts "Give me the price you are looking for:"
    userPrice = gets.chomp.to_i
    byPriceHome = arr.find { |home| home.price == userPrice  }
    puts("#{byPriceHome.name} in #{byPriceHome.city}\nPrice: $#{byPriceHome.price.to_s} a night\n\n")
  end

  def orderByPrice (arr)
    homesByPrice = arr.sort { |home1, home2| home1.price <=> home2.price }
    showHomes(homesByPrice)
  end
end

handlerrr = Handler.new()
handlerrr.menu
