class Question
  attr_accessor :num1, :num2, :answer, :player
  def initialize(max, player)
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = num1 + num2
    player === 1 ? @player = 2 : @player = 1
  end

  def toString
    return "Player #{player}: What does #{num1} plus #{num2} equal?"
  end

end