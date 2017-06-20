# Deaf Grandma

puts "Hello Dear."

while true
  puts "WHAT DO YOU WANT FROM YOUR GRANDMA!?"
  response = gets.chomp
  if response == "BYE"
    puts "HUH?"
    response = gets.chomp
    if response == "BYE"
      puts "HUH?!?!"
      response = gets.chomp
      if response == "BYE"
        puts "GOODBYE SONNY!"
        break
      end
    end
  elsif (response == response.upcase)
    puts "NO, NOT SINCE #{rand(20)+1930}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
