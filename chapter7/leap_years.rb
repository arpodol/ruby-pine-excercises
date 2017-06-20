# prints leap years between starting and ending years

puts "This program prints out all the leap years between two dates."
puts "Starting Year: ?"
starting_year = gets.chomp
puts "Ending Year: ?"
ending_year = gets.chomp
puts ""

year = starting_year.to_i
while year <= ending_year.to_i
  if year%4 ==0
      if year%100 != 0 || year%400 == 0
        puts "#{year} is a Leap Year"
      end
  end
  year += 1
end
