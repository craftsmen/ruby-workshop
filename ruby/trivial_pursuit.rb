class Card
  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

cards = [
  Card.new("When was created Ruby lang ?", "1995"),
  Card.new("When was created PHP lang ?", "1994")
]

cards.each do |card|
  print "#{card.question} >"
  guess = gets.chomp

  if guess == card.answer
    puts "Correct"
  else
    puts "Incorrect ! Answer was #{card.answer}"
  end
end
