# conditional_loop2.rb

x = 0

while x <= 10
  if x.odd?
    puts x
  else
    break
  end
  x += 1
end