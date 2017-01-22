# scope.rb

a = 5         # varialbe is initialized in the outer scope
b = nil

3.times do |n|
  a = 3       # is a accessible here, in an inner scope?
  b = 5       # b is initialized in the inner scope
end

puts a
puts b


arr = [1, 2, 3]

for i in arr do
  c = 5 * i
end

puts c