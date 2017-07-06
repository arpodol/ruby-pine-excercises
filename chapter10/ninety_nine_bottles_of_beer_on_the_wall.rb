def  english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end
  # no more special cases! No more returns!
  num_string = '' # This is the string we will return

  ones_place = ['one',      'two',       'three',
                'four',     'five',      'six',
                'seven',    'eight',     'nine']
  hundreds_place = ['one',      'two',       'three',
               'four',     'five',      'six',
               'seven',    'eight',     'nine']

  tens_place = ['ten',      'twenty',   'thirty',
                'forty',    'fifty',    'sixty',
                'seventy',  'eighty',   'ninety' ]
  teenagers  = ['eleven',   'twelve',   'thirteen',
                'fourteen', 'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']

  thousands_place = ['one',      'two',       'three',
                     'four',     'five',      'six',
                     'seven',    'eight',     'nine']



  left  = number
  write = left/1000   # How many thousands left?
  left  = left - write * 1000 # subtract off those thousands

  if write > 0
    # Now here's the recursion:
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      # So we don't write a run on
      num_string = num_string + ' '
    end
  end


  write = left/100   # How many hundreds left?
  left  = left - write * 100 # subtract off those hundreds

  if write > 0
    num_string = num_string + hundreds_place[write-1] + ' hundred'
    if left > 0
      # So we don't write a run on
      num_string = num_string + ' '
    end
  end

  write = left/10    # how many tens left?
  left  = left - write*10   # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write twenty two instead of 'twelve'
      num_string = num_string + teenagers[left-1]
      # The -1 is because teenagers[3] is fourteen not thirteen
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
      # The -1 is because tens_place[3] is forty not thirty
    end
    if left > 0
      # so we don't write sixty four
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left = 0      # Subtract off those ones

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The -1 is because ones_place[3] is four not three
  end

  # Now we just return num_string
  num_string

end



# Prints lyrics to 99 bottles of beer on the wall

x = 9999
while x > 2
  puts "#{english_number(x).capitalize} bottles of beer on the wall, #{english_number(x).capitalize} bottles of beer."
  puts "Take one down, pass it around, #{english_number(x - 1).capitalize} bottles of beer on the wall."
  x -= 1
end


puts "Two bottles of beer on the wall, two bottles of beer."
puts "Take one down, pass it around, one bottle of beer on the wall."
puts "One bottle of beer on the wall, one bottle of beer."
puts "Take it down, pass it around, no more bottles of beer on the wall."



