#Hours in a year
daysInYear = 365
hoursInDay = 24

puts "There are #{daysInYear*hoursInDay} hours in a year"

# Minutes in a decade
daysInLeapYear = 366
daysInDecadeWith2Leaps = 8*daysInYear+2*daysInLeapYear
daysInDecadeWith3Leaps = 7*daysInYear+3*daysInLeapYear

minsInDecadeWith2Leaps = daysInDecadeWith2Leaps*hoursInDay*60
minsInDecadeWith3Leaps = daysInDecadeWith3Leaps*hoursInDay*60

puts "There are either #{minsInDecadeWith2Leaps} or #{minsInDecadeWith3Leaps} minutes in a decade"


# age in seconds
puts "My age in seconds is #{20*365*24*60*60}"

# Authors age

puts "The authors age is #{((((1160000000/60)/60)/24)/365)}"
