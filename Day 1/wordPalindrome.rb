def is_palindrome? (palindrom_candidate)
  palindrom_candidate.downcase!
  clean_palindrome = palindrom_candidate.downcase.split(" ")
  return(clean_palindrome.reverse == clean_palindrome)
end

puts is_palindrome?("Fall leaves as soon as leaves fall")
