def capitalize
  cities = ["miami", "madrid", "barcelona"]

  cities_capitalized = cities.map do |city|
    city.capitalize
  end

  puts cities_capitalized
end

capitalize()
