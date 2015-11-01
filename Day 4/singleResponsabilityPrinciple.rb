require 'Pry'

class CommandLineTool
  def initialize
    @name
    @password
  end

  def ask_credentials
    puts "Name? :"
    @name = gets.chomp
    puts "Password? :"
    @password = gets.chomp
  end

  def check_credentials
    puts "Password? :"
    password = gets.chomp
    check = password == @password ? true : false
  end

  def ask_sentence
    puts "give me ya sentence"
    sentence = gets.chomp
  end

  def count_words
    if check_credentials
      ask_sentence
      toCount = sentence.split(" ")
      puts "There is #{toCount.length} words in your sentence"
    else
      puts "wrong creds"
    end
  end
end

binding.pry
