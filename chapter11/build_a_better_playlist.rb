# This program creates a shuffled playlist of songs
# The method for mixing them is predicated on the genre of the song. If the
# genre of the song is the same as the one prior,the program will select another
# one until it a different genre is selected or the try counter reaches 8

# Altered method from previous assignment
def recursive_mixing(sorted_array, shuffled_array)
  if sorted_array == []
    puts shuffled_array
  elsif shuffled_array.any? && sorted_array != 0
    element_is_mixed = false # Dictates if mixing criteria is satisfied.
    try_counter = 0
    until element_is_mixed
      index = rand(sorted_array.length)
      prior_song = shuffled_array[-1]
      prior_genre = prior_song.split('/')[1]
      current_song = sorted_array[index]
      current_genre = current_song.split('/')[1]
      if prior_genre != current_genre || try_counter == 8 # num of times to try
        shuffled_array.push sorted_array[index]
        sorted_array.delete_at(index)
        recursive_mixing sorted_array, shuffled_array
        element_is_mixed = true
      else
        try_counter +=1
      end
    end
  else
    shuffled_array.push sorted_array[0]
    sorted_array.delete_at(0)
    recursive_mixing sorted_array, shuffled_array

  end
end


# compile all mp3's into an array
music_list = Dir['**/*.mp3']

# initialize new array and shuffle the compiled list into this new array
shuffled_music_list = []
recursive_mixing music_list, shuffled_music_list


# open up a playlist file and write each of the elements of the array
File.open "playlist.m3u", 'w' do |f|
  shuffled_music_list.each do |song|
    f.write song + "\n"

  end
end



