# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name}, I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Julio", {age: 40, city: "Guatemala City"})
greeting("Mia", age: 32, city: "San Francisco")
greeting("Peter", {age:25, city:"Toronto"})