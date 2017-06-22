# takes in number 3000 and below and returns old roman numeral equivalent

def old_roman_numeral (number)
  m = "M" * (number/1000)
  m_remainder = number%1000
  d = "D" * (m_remainder/500)
  d_remainder = m_remainder%500
  c = "C" * (d_remainder/100 )
  c_remainder = d_remainder%100
  l = "L" * (c_remainder/50)
  l_remainder = c_remainder%50
  x = "X" * (l_remainder/10)
  x_remainder = l_remainder%10
  v = "V" * (x_remainder/5)
  i = "I" * (x_remainder%5)
  puts "Your number in old roman numberals is " + m + d + c + l + x + v + i

end

puts "Number Plz"
number = gets.chomp
old_roman_numeral(number.to_i)
