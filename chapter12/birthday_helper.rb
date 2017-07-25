# This program loads the birthdays.txt file and puts them into a hash to be called at your leisure

require 'yaml'
filename = 'birthdays.txt'
birth_dates = {}

File.foreach(filename) do |line|
  array = line. split ','
  name = array[0].strip
  date = array[1].strip + ', ' + array[2].strip
  birth_dates[name.downcase] = date
end


puts " Whos birthday do you want to know? "
name_of_person = gets.chomp

bday_of_interest = birth_dates[name_of_person.downcase]

unless bday_of_interest
  puts "We do not have info on that person"
  exit
end
puts "#{name_of_person}'s birthday is #{bday_of_interest} "


