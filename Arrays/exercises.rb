# exercises.rb


=begin
arr = [1, 3, 5, 7, 9, 11]

puts "Enter number to search for: "
x = gets.chomp.to_i

pos = arr.index(x)

if pos != nil
  puts "#{x} exists on the array #{arr} at position #{pos+1}"
elsif
  puts "#{x} does NOT existon the array #{arr}"
end
=end

array1 = [1,2,3,4,5,6,7,8,9]

array2 = []

array1.each_index do |i| 
  array2 << array1[i] + 2 
end

puts array1
puts ""
puts array2