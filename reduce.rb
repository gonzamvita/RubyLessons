require 'pry'

def reduceCity
  cities = ["miami", "madrid", "barcelona", "holaquetalestas"]
  cities.reverse!
  longestNameCity = ""

  cities.reduce do |first, city|
    if city.length > first.length
      longestNameCity = city
      first = city
    else
      longestNameCity = first
      first = first
    end
  end
  puts longestNameCity
end

reduceCity()
