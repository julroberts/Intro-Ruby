# conditional.rb

puts "Put in a nubmer"
a = gets.chomp.to_i

=begin

# Using traditional if/elsif/else statements

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end


# Using the conditional at the end of the statement (New!)
puts "a is 3" if a == 3
puts "a is 4" if a == 4
puts "a is neither 3, nor 4" unless (a == 3) || (a == 4)
=end

# Using the ternary operator "?" and ":"
#puts !((a == 3) || (a == 4)) ?  "a is neiter 3, nor 4" : "a is " + a.to_s

# case statement
answer = 
  case 
    when a == 5
      a.to_s + " is 5"
    when a == 6
      a.to_s + " is 6"
    else
      a.to_s + " is neither 5, nor 6"
  end

puts answer