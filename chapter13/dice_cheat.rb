# Add a cheat method to the dice class from the book

class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(number)
    if number <= 6 && number >0
      @number_showing = number
    end
  end
end

# construct new dice
die = Die.new

# test different cheat values
puts die.showing
die.cheat(7)
puts die.showing
die.cheat(0)
puts die.showing
die.cheat(4)
puts die.showing