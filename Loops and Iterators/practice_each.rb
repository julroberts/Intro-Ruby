# practice_each.rb

names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]

# iterate in just one line
names.each { |name| puts name}

puts ""

# iterate in multiple lines
x =1
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end