def hola
  classmates = ["Jack", "Wally", "Joey"]

  classmates.each{|classmate| sayhello(classmate)}
end

def sayhello(classmate)
  puts("Hello " + classmate + "!")
end

hola
