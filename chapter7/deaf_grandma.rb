# Deaf Grandma

puts "Hello Dear."

while true
  puts "What do you want from your grandma?"
  response = gets.chomp
  if response == "BYE"
    puts "GOODBYE SONNY!"
    break
  elsif (response == response.upcase)
    puts "NO, NOT SINCE #{rand(20)+1930}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
