# extend built in classes with previous codq



class Array
  def shuffle
    current_array = self
    shuffled_array = []
    while current_array != []
      index = rand(current_array.length)
      shuffled_array.push current_array[index]
      current_array.delete_at(index)
    end
    current_array = shuffled_array
  end
end


test = [1, 2, 3, 4, 5]
puts test.shuffle

class Integer
  def factorial
    i = self
    factorial_sum = 1
    while i>1
      factorial_sum *= i
      i-=1
    end
    factorial_sum
  end
end

puts 5.factorial
puts 0.factorial
puts 3.factorial


class Integer
  def to_roman
    number = self
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
end

puts 1999.to_roman