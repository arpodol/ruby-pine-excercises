# ask for someones birthday year and month etc and give spanks for each year they are

puts "What year were you born?"
year = gets.chomp()

puts "What month were you born?"
month = gets.chomp()

puts "What day were you born?"
day = gets.chomp()

age = Time.new - Time.new(year,month,day)

age_in_years = (age/3600/24/365).floor

puts "Here's #{age_in_years} spanks!"

age_in_years.times do
  puts "SPANK!"
end

