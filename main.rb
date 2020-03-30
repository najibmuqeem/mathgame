require './player'
require './question'

p1 = Player.new(1)
p2 = Player.new(2)
q = Question.new(20, 2)

puts "Welcome to the most complicated math competition you will ever face!"

loop do
  player = q.player
  puts q.toString
  a = gets.chomp

  if a.to_i === q.answer
    player === 1 ? p1.right : p2.right
  else
    player === 1 ? p1.wrong : p2.wrong
  end

  puts "P1: #{p1.points}/3 vs P2: #{p2.points}/3"
  puts "----- NEW TURN -----"

  if p1.points === 0
    p2.winner(p2.points)
    break
  elsif p2.points === 0
    p1.winner(p1.points)
    break
  end

  q = Question.new(20, player)
end
