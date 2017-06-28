# implement the sort incoming array of words method not using recursion

def sort_some_array
  unsorted_array = []
  sorted_array = []
  puts "Enter words seperated by enter"
  while true
    entry = gets.chomp
    if entry == ""
      break
    end
    unsorted_array.push entry
  end
  while unsorted_array != []
    sorting_word = unsorted_array[0]
    sorting_word_index = 0
    unsorted_array.each_with_index do | word, index|
      if word < sorting_word
        sorting_word = word
        sorting_word_index = index
      end
    end
    sorted_array.push sorting_word
    unsorted_array.delete_at(sorting_word_index)
  end
  puts sorted_array
end







# call function to be used from main
sort_some_array
