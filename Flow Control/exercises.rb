=begin
def allCapsIf(strWord)
  if strWord.length > 10
    return strWord.upcase
  else
    return strWord
  end
end

s = gets.chomp

puts allCapsIf(s)

=end

def numBetween(num)
  case 
    when (num >= 0) && (num <= 50)
      puts "The number " + num.to_s + " is betwen 0 and 50"
    when (num > 50) && (num <= 100)
      puts "The number " + num.to_s + " is betwen 51 and 100"
    else
      puts "The number " + num.to_s + " is not betwen 0 and 100"
  end
end

puts "Enter a number: "
n = gets.chomp.to_i

numBetween(n)