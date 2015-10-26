def mapExercise
  arr = [1,2,3]
  new_arr = []

  new_arr = arr.map do |item|
    item + 1
  end

  puts(new_arr)

end

mapExercise()
