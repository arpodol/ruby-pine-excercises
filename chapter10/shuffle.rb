# take sorted array and shuffles it using recursion

def shuffle_some_array
  sorted_array = []
  puts "Enter words seperated by enter"
  while true
    entry = gets.chomp
    if entry == ""
      break
    end
    sorted_array.push entry
  end
  recursive_shuffle sorted_array, []
end

def recursive_shuffle(sorted_array, shuffled_array)
  if sorted_array == []
    puts shuffled_array
  else
    index = rand(sorted_array.length)
    shuffled_array.push sorted_array[index]
    sorted_array.delete_at(index)
    recursive_shuffle sorted_array, shuffled_array
  end
end

# call function to be used from main
shuffle_some_array
