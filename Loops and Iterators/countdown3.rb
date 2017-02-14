# countdown3.rb

puts "Enter 'for' last element that starts in '1': "
x = gets.chomp.to_i
puts ""

for i in 1..x do
  puts i
end

puts "Done!"