# This program creates a shuffled playlist of songs


# Use method from previous assignment
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

# compile all mp3's into an array
music_list = Dir['**/*.mp3']

# initialize new array and shuffle the compiled list into this new array
shuffled_music_list = []
recursive_shuffle music_list, shuffled_music_list


# open up a playlist file and write each of the elements of the array
File.open "playlist.m3u", 'w' do |f|
  shuffled_music_list.each do |song|
    f.write song + "\n"

  end
end



