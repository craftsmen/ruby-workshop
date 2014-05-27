class Card
  attr_accessor :question, :answer

  def initialize question, answer
    @question = question
    @answer = answer
  end

  def correct? guess
    guess.chomp == @answer
  end
end

class Game
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def << card
    @cards << card
  end

  def shuffle
    @cards.shuffle!
  end
end

game = Game.new
game << Card.new("When was created Ruby lang ?", "1995")
game << Card.new("When was created PHP lang ?", "1994")
game.shuffle

game.cards.each do |card|
  print "#{card.question} >"

  if card.correct? gets
    puts "Correct"
  else
    puts "Incorrect ! Answer was #{card.answer}"
  end
end
