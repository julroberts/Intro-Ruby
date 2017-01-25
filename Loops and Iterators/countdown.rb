# countdown.rb

puts "Enter start number: "
x = gets.chomp.to_i

=begin
while x >= 0
  puts x
  x = x - 1
end
=end

# Previous loop refactored
=begin
while x >= 0
  puts x
  x -= 1 # <-- refactored this line
end
=end 

# Previous loop but now using "until" instead of "while"
until x < 0
  puts x
  x -= 1
end

puts "Done!"