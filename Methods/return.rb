# return.rb

def add_three(number)
  number + 3
end

returned_value = add_three(4)

puts returned_value

add_three(5).times { puts "this should print 8 times" }

def add(a, b)
  a + b
end

def substract(a,b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end


puts multiply(add(20, 45), substract(80, 10))