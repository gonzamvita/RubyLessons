puts 3+4
print 3+4 #sin salto de linea
puts 1

#comment

=begin
  no pueden estar identados
=end

name = "Gonzalo"
puts name

#Strings
# Con dobles comillas interpreta los caractéres de escape, con simple no

string = "My \nstring"
string2 = 'My \nstring'

puts string
puts string2

puts string + string2 # Sólo puedes concatenar variables del mismo tipo.

age = 14
str = "Hi! I'm #{age} years old"

puts str

#Numbers

puts 2 + 3
puts 2 / 3
puts 2.0 / 3
