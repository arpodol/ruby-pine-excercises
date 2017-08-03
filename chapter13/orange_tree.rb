# Orange tree simulator

class Orange_Tree
  def initialize
    @age = 0
    @orange_count = 0
    @tree_height = 1
    puts "You planted a new orange tree."
  end

  def height
    "The tree is #{@tree_height} feet tall."
  end

  def one_year_passes
    @age += 1
    # Death age is very low in order to test it out
    if @age > 20
      puts "The orange tree has reached the end of its life and dies!"
      exit
    end
    # Restrict when fruit starts growing
    if @age > 5
      @orange_count = (@age - 4) * 3
    end

    @tree_height *= 1.4
  end

  def count_the_oranges
    puts "There are #{@orange_count} oranges on the tree."
  end

  def pick_an_orange
    if @orange_count >0
      @orange_count -= 1
      puts 'You pick an orange. It tastes delicious.'
    else
      puts 'There are no oranges to pick!'
    end

  end
end

# Test out program

tree = Orange_Tree.new
tree.count_the_oranges
puts tree.height
tree.one_year_passes
tree.one_year_passes
puts tree.height
tree.one_year_passes
puts tree.height
tree.count_the_oranges
tree.one_year_passes
puts tree.height
tree.count_the_oranges
tree.one_year_passes
puts tree.height
tree.count_the_oranges
tree.one_year_passes
puts tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
puts tree.height
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes



