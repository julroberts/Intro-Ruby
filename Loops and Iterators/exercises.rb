# 2

=begin
rescue => exception
  
end
loop do
  puts "Enter some text: "
  usrInput = gets.chomp
  if usrInput.upcase == "STOP"
    puts " ok, stopping..."
    break
  end
  puts "Lets do that again!"
  puts ""
end #loop
=end



#3
=begin
lastNames = ["Quezada", "Arrué", "Ziesse", "Véliz"]

lastNames.each_with_index do | val, index |
  puts "#{(index + 1).to_s} - #{val}"
end
=end

#4

def CountDown num
  puts num
  if num > 0 
    CountDown(num-1)
  end
end

puts "Enter number to count down to zero:"
x = gets.chomp.to_i

CountDown(x)