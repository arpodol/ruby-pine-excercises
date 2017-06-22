# takes in number 3000 and below and returns modern roman numeral equivalent


def roman_numeral (number)
  thousands = (number / 1000)
  hundreds = ((number % 1000) / 100)
  tens = ((number % 100) / 10)
  ones = ((number % 10) / 1)

  final_numeral = "M" *thousands

  if hundreds == 9
    final_numeral = final_numeral + "CM"
  elsif hundreds == 4
    final_numeral = final_numeral + "CD"
  else
    final_numeral = final_numeral + "D" * (number % 1000 / 500)
    final_numeral = final_numeral + "C" * (number % 500 / 100)
  end

  if tens == 9
    final_numeral = final_numeral + "XC"
  elsif tens == 4
    final_numeral = final_numeral + "XL"
  else
    final_numeral = final_numeral + "L" * (number % 100 / 50)
    final_numeral = final_numeral + "X" * (number % 50 / 10)
  end

  if ones == 9
    final_numeral = final_numeral + "IX"
  elsif ones == 4
    final_numeral = final_numeral + "IV"
  else
    final_numeral = final_numeral + "V" * (number % 10 / 5)
    final_numeral = final_numeral + "I" * (number % 5 / 1)
  end
  puts final_numeral


end

puts "Number Plz"
number = gets.chomp
roman_numeral(number.to_i)
