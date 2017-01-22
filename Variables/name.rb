puts "Please enter your First name: "
strFirstName = gets.chomp

puts "Now please enter your Last name: "
strLastName = gets.chomp

puts "Hello " + strFirstName + ' ' + strLastName

puts ""
puts "Here's your name 10 times:"

10.times do
  puts strFirstName + ' ' + strLastName
end

