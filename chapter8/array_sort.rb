# takes in a chunk of words and sorts it alphabetically

array = []

puts "Enter words sepereated by enter"
while true
  entry = gets.chomp
  if entry == ""
    break
  end
  array.push entry
end

puts array.sort
