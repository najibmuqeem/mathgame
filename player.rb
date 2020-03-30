class Player
  attr_accessor :points

  def initialize(num)
    @points = 3
    @playerNum = num
  end

  def right
    puts "Player #{@playerNum}: YES! You are correct."
  end

  def wrong
    puts "Player #{@playerNum}: Seriously? No!"
    @points -= 1
  end

  def winner(score)
    puts "Player #{@playerNum} wins with a score of #{score}/3!"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end