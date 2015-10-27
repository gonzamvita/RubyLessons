def game

  puts "What's your name?"
  name = gets
  number = Random.rand(1..10)
  lifes = 10
  puts "I have a number from 1 to 10, try to guess..."

  while lifes > 0 do
    usernumber = gets.to_i

    if usernumber < number
      puts "My number is higher, try again"
      lifes = lifes - 1
    elsif usernumber > number
      puts "My number is lower, try again"
      lifes = lifes -1
    elsif usernumber == number
      puts "correct!"
      return
    end
  end

  if lifes = 0
    puts "You have no more lifes, sorry!"
  end

end

def hello
 #todo
end


game
