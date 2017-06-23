# implement the sort incoming array of words method using recursion rather than sort

def sort_some_array
  unsorted_array = []
  puts "Enter words seperated by enter"
  while true
    entry = gets.chomp
    if entry == ""
      break
    end
    unsorted_array.push entry
  end
  recursive_sort(unsorted_array, [])
end

def recursive_sort (unsorted_array, sorted_array)
  if unsorted_array == []
    print sorted_array
  else
    future_unsorted_array = []
    lowest_value = unsorted_array.pop
    unsorted_array.each do |word|
      if word < lowest_value
        future_unsorted_array.push lowest_value
        lowest_value = word
      else
        future_unsorted_array.push word
      end
    end
    sorted_array.push lowest_value
    recursive_sort future_unsorted_array, sorted_array
  end
end

# call function to be used from main
sort_some_array
