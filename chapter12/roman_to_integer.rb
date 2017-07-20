
def roman_to_integer(roman_numeral)

  # Hash of valid Roman numerals
  roman_hash = {
    'i'=>1,
    'v'=>5,
    'x'=>10,
    'l'=>50,
    'c'=>100,
    'd'=>500,
    'm'=>1000
  }

  # Initalize the toal, the index and prior values for use in the loop
  total = 0
  index = (roman_numeral.length) - 1
  prior = 0

  # Start from end so we can subtract off the values that precede larger numbers
  while index >= 0
    current = roman_hash[roman_numeral.downcase[index]]
    # Check for existence of roman numeral in the normal human set
    unless current
      puts 'invalid string'
      exit
    end
    # Prior will keep track of the local large numerals
    if current < prior
      current *= -1
    else
      # New local large value
      prior = current
    end
    total += current
    index -= 1
  end
  puts total

end




roman_to_integer('mcmxcix')