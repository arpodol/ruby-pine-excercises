# revisiting table of contents using arrays

table_of_contents = [["Getting Started", 1], ["Numbers", 9],["Letters", 13]]

puts ("Table of Contents".center(50))
chapter_number = 1
table_of_contents.each do |chapter, page|
  puts (("Chapter #{chapter_number}:  " + chapter).ljust(30) + ("page  "+ page.to_s).rjust(20))
  chapter_number += 1
end
