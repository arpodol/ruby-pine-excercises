# Takes pictures from one directory, renames them and moves them

picture_source = '' # source goes here
new_location ='' # location goes here

Dir.chdir new_location


pic_names = Dir[picture_source]

puts "What would you like to call this batch?"

batch_name = gets.chomp

puts
print "Transferring files"

# This will be our counter

pic_number = 1

pic_names.each do | name|
  print '.' # this is progress bar

  new_name = if pic_number < 10
               "#{batch_name}0#{pic_number}.jpg"
             else
               "#{batch_name}#{pic_number}.jpg"
             end
  if File.exist? new_name
    puts
    puts "Files already exist. Aborting!"
    exit
  end

  File.rename name, new_name

  pic_number += 1

end

puts
puts "Done!"

