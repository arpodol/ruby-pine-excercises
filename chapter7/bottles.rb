# Prints lyrics to 99 bottles of beer on the wall

x = 99
while x > 1
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer."
  puts "Take one down, pass it around, #{x-1} bottles of beer on the wall."
  x -= 1
end

puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take it down, pass it around, no more bottles of beer on the wall."
