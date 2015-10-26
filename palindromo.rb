def is_palindrome? (palindrom_candidate)
  clean_palindrome = palindrom_candidate.downcase.gsub(" ", "").gsub(",", "")

  return(clean_palindrome.reverse == clean_palindrome)
end

puts is_palindrome?("Race,cl car")
