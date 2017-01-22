# Here I'm creating an array
ar = [1,2,3,4,5,6,7,8,9,10]

puts "Number of items in the array: " + ar.count.to_s

# Sample function that does nothing important
def count_stars
  a = 2
  b = 3.5

  return a * b
end

c = count_stars

puts c.to_s

# Testing Hash data structures
hsh = {:cat=>"meows", :dog=>"barks", :pig=>"oinks"}

puts hsh[:dog]


# EXERCISES
# =============================================================================

# Add two strings
str_first_name = "Julio"
str_last_name = "Quezada"
puts str_first_name + " " + str_last_name


# Take a 4 digit number and find the digit in a position
int_input_number = 5329

thousandth_digit = int_input_number / 1000
hundredth_digit = (int_input_number - (thousandth_digit * 1000))/100
tenth_digit = (int_input_number - (thousandth_digit * 1000) - (hundredth_digit * 100))/10
ones_digit = int_input_number - (thousandth_digit * 1000) - (hundredth_digit * 100) - (tenth_digit * 10)

puts "INPUT: " + int_input_number.to_s
puts "Thousandth digit: " + thousandth_digit.to_s
puts "Hundredth digit:  " + hundredth_digit.to_s
puts "Thenth digit:     " + tenth_digit.to_s
puts "Ones digit:       " + ones_digit.to_s



# Hash to store a list of movie titles and print the year they came out

movies = {"The Godfather": 1975, "Top Gun": 1983, "The Force Awakens": 2015}

puts movies[:"The Godfather"].to_s
puts movies[:"Top Gun"].to_s
puts movies[:"The Force Awakens"].to_s


# Dates stored in an array

movie_dates = [1975, 1983, 2015]

puts movie_dates[0].to_s
puts movie_dates[1].to_s
puts movie_dates[2].to_s

# Factorials

def factorial (number)
  if number > 0
    return number * factorial(number-1)  
  end
  return 1
end

puts ""
puts "Factorial of 5 is: " + factorial(5).to_s
puts "Factorial of 6 is: " + factorial(6).to_s
puts "Factorial of 7 is: " + factorial(7).to_s
puts "Factorial of 8 is: " + factorial(8).to_s